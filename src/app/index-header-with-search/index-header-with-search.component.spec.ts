import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { IndexHeaderWithSearchComponent } from './index-header-with-search.component';

describe('IndexHeaderWithSearchComponent', () => {
  let component: IndexHeaderWithSearchComponent;
  let fixture: ComponentFixture<IndexHeaderWithSearchComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ IndexHeaderWithSearchComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(IndexHeaderWithSearchComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
