import { TestBed } from '@angular/core/testing';

import { ApiRoutingService } from './api-routing.service';

describe('ApiRoutingService', () => {
  beforeEach(() => TestBed.configureTestingModule({}));

  it('should be created', () => {
    const service: ApiRoutingService = TestBed.get(ApiRoutingService);
    expect(service).toBeTruthy();
  });
});
