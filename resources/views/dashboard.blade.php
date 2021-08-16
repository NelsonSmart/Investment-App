@extends('layouts.layout')
@section('title') Analytics Dashboard @endsection
@section('content')
    <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-car icon-gradient bg-mean-fruit"></i>
                </div>
                <div>Analytics Dashboard
                    <div class="page-title-subheading">Hello {{Auth()->user()->name}}, Welcome to your dashboard.</div>
                </div>
            </div>
        </div>
    </div>        

    <div class="tabs-animation">
        <div class="mb-3 card">
            <div class="card-header-tab card-header">
                <div class="card-header-title font-size-lg text-capitalize font-weight-normal">
                    <i class="header-icon lnr-charts icon-gradient bg-happy-green"> </i>
                    Portfolio Performance
                </div>
            </div>
            <div class="no-gutters row">
                <div class="col-sm-6 col-md-4 col-xl-4">
                    <div class="card no-shadow rm-border bg-transparent widget-chart text-left">
                        <div class="icon-wrapper rounded-circle">
                            <div class="icon-wrapper-bg opacity-10 bg-warning"></div>
                            <i class="lnr-laptop-phone text-dark opacity-8"></i>
                        </div>
                        <div class="widget-chart-content">
                            <div class="widget-subheading">Cash Deposits</div>
                            <div class="widget-numbers">$0</div>
                        </div>
                    </div>
                    <div class="divider m-0 d-md-none d-sm-block"></div>
                </div>
                <div class="col-sm-6 col-md-4 col-xl-4">
                    <div class="card no-shadow rm-border bg-transparent widget-chart text-left">
                        <div class="icon-wrapper rounded-circle">
                            <div class="icon-wrapper-bg opacity-9 bg-danger"></div>
                            <i class="lnr-graduation-hat text-white"></i>
                        </div>
                        <div class="widget-chart-content">
                            <div class="widget-subheading">Invested Dividents</div>
                            <div class="widget-numbers"><span>$0</span></div>
                        </div>
                    </div>
                    <div class="divider m-0 d-md-none d-sm-block"></div>
                </div>
                <div class="col-sm-12 col-md-4 col-xl-4">
                    <div class="card no-shadow rm-border bg-transparent widget-chart text-left">
                        <div class="icon-wrapper rounded-circle">
                            <div class="icon-wrapper-bg opacity-9 bg-success"></div>
                            <i class="lnr-apartment text-white"></i>
                        </div>
                        <div class="widget-chart-content">
                            <div class="widget-subheading">Capital Gains</div>
                            <div class="widget-numbers text-success"><span>$0</span></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-car icon-gradient bg-mean-fruit"></i>
                </div>
                <div>Referal History
                    <div class="page-title-subheading">Invite your friends to earn from this platform as well.</div>
                </div>
            </div>
        </div>
    </div>  
        
    <div class="card no-shadow bg-transparent no-border rm-borders mb-5">
        <div class="card">
            <div class="no-gutters row">
                <div class="col-md-12 col-lg-4">
                    <ul class="list-group list-group-flush">
                        <li class="bg-transparent list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-outer">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Total Referals</div>
                                            <div class="widget-subheading">Total number of people reffered</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-success">$0</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-md-12 col-lg-4">
                    <ul class="list-group list-group-flush">
                        <li class="bg-transparent list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-outer">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Pending Referals</div>
                                            <div class="widget-subheading">Referal pending approval</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-danger">$0</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="col-md-12 col-lg-4">
                    <ul class="list-group list-group-flush">
                        <li class="bg-transparent list-group-item">
                            <div class="widget-content p-0">
                                <div class="widget-content-outer">
                                    <div class="widget-content-wrapper">
                                        <div class="widget-content-left">
                                            <div class="widget-heading">Referal Earnings</div>
                                            <div class="widget-subheading">Amount earned from referals</div>
                                        </div>
                                        <div class="widget-content-right">
                                            <div class="widget-numbers text-success">$0</div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div> 
            
            <div class="no-gutters row">
            <div class="col-md-12">
            <hr>
                <div class="card-body">
                    <h5 class="card-title">Referal Link</h5>
                    <div class="input-group">
                        <input type="text" class="form-control" id="clipboard-source-2" value="{{$ref_code}}">
                        <div class="input-group-append">
                            <button type="button" data-clipboard-target="#clipboard-source-2" class="btn btn-primary clipboard-trigger">
                                <i class="fa fa-copy"></i>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
    </div>
    </div>        
        
    </div>
@endsection