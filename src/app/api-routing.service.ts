import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class ApiRoutingService {
  
  allSports = 'http://localhost:8080/api/sports';


  constructor(private http: HttpClient) { }
  getSports$():Observable<any>{
    return this.http.get(this.allSports)
  }
}
