const insta = require('instagram-web-api')
const latestTweets = require('latest-tweets')
const https = require('https')
const dotenv = require('dotenv');

dotenv.config();
const { INSTAUSER, 
        INSTAPASS,
        YOUTUBEAPI 
    } = process.env
    
const { mySQLConn } = require('../dbConnectivity/dbConnection');

const iClient = new insta({ 
                            username:INSTAUSER,
                            password:INSTAPASS
                        })


exports.getAllSports = (req, res) => {
    mySQLConn.query(
        'CALL allSports()',
        (err, rows, fields) => {
            if(!err) return res.status(200).json(rows);
            return res.sendStatus(400).send(err);
        }
    );
};

exports.getAllPlayersInSport = (req, res) => {
    mySQLConn.query(
        `CALL allPlayersSportsWise(
            ${req.params.sport_id})`,
        (err, row, fields) => {
            if(!err) return res.status(200).json(row);
            return res.status(400).send(err);
        }
    )
}

exports.getInsta = (req, res) =>{
    (async () => {
        await iClient.login()
        const profile = await iClient.getUserByUsername({username:req.params.username})
        res.send(profile.edge_owner_to_timeline_media.edges)
      })()
}

exports.getPlayerDetails = (req, res) => {
    mySQLConn.query(
        `CALL singlePlayerDetails(${req.params.player_id})`, 
        (err, row) => {
            if(!err) return res.status(200).json(row)
            return res.status(400).send(err)
        }
    )
}

exports.searchAll = (req,res)=>{
    mySQLConn.query(
        `CALL gameOrPlayerSearch('${req.params.data}')`, 
        (err, row) => {
            if(!err) return res.status(200).json(row)
            return res.status(400).send(err);
        }
    )
}

exports.getUTube =  (req, res) =>{
        const options = 'https://www.googleapis.com/youtube/v3/search?key='+YOUTUBEAPI+'&channelId=UCZrV-3Mvk8KPX1wyCqs7vGw&order=date&part=snippet&type=video,id&maxResults=10';
        https.get(options, (resp) => {
         console.log('statusCode:', resp.statusCode)

        resp.on('data', (d) => {
            
            const dt = process.stdout.write(d).valueOf()
            res.send(dt)
        })

        }).on('error', (e) => {
             console.error(e);
        })
}

exports.getTwit = async (req, res) =>{
    await latestTweets(`${req.params.username}`, (err, tweets)=>{
        res.send(tweets);
    })
}




