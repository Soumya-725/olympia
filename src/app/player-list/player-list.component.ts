import { ApiRoutingService } from './../api-routing.service';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute, Router } from '@angular/router';

@Component({
  selector: 'app-player-list',
  templateUrl: './player-list.component.html',
  styleUrls: ['./player-list.component.css']
})
export class PlayerListComponent implements OnInit {
  sport_id: any;
  players:any[];
  sport_name: any;

  constructor(private route: ActivatedRoute, private ApiRoutingService: ApiRoutingService,private Router:Router) { }

  ngOnInit() {
    this.route.paramMap
      .subscribe( params=>{
        this.sport_id = params.get('sports_id')
      })
      this.ApiRoutingService.getPlayers$(this.sport_id)
        .subscribe( players =>{
          this.players = players[0];
          this.sport_name = this.players[0].sport_name;
        },
        err=>{
          this.Router.navigate(["Not Found"])
        })
  }
}
