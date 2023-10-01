import { LinkTo } from '@ember/routing';

<template>
  <div
    class="col-md-3 order-3 d-none d-xl-flex flex-column py-2 vh-100 sticky-top"
  >
    <div class="card border-0 shadow mb-3">
      <div class="card-body d-flex align-items-center">
        <div class="container text-center">
          <div class="row mt-3">
            <div class="input-group rounded">
              <input
                type="search"
                class="form-control rounded search-bar"
                placeholder="Search for cards..."
                aria-label="Search"
                aria-describedby="search-addon"
              />
            </div>
          </div>
          <div class="row">
            <p class="mt-4 mb-2 font-size-10">
              <LinkTo @route="page.advanced-search">Advanced Search</LinkTo>
              •
              <LinkTo @route="page.syntax">Syntax Guide</LinkTo>
              •
              <a href="#">Random Card</a>
              {{! TODO }}
            </p>
          </div>
        </div>
      </div>
    </div>
    <div class="card border-0 shadow p-2 flex-grow-1">
      <div class="container d-flex flex-column justify-content-between h-100">

        <nav class="navbar">
          <ul class="navbar-nav">
            <li class="nav-item px-4 py-2">
              <a class="nav-link" href="#">My decks</a>
              {{! TODO }}
            </li>
            <li class="nav-item px-4 py-2">
              <a class="nav-link" href="#">Public Profile</a>
              {{! TODO }}
            </li>
            <li class="nav-item px-4 py-2">
              <a class="nav-link" href="#">Edit Account</a>
              {{! TODO }}
            </li>
            <li class="nav-item px-4 py-2">
              <a class="nav-link" href="#">Always Be Running</a>
              {{! TODO }}
            </li>
          </ul>
        </nav>

        <div class="row font-size-9">
          <p></p>
          <p class="text-center font-size-11">
            <a href="" class="text-decoration-none">About</a>
            •
            {{! TODO }}
            <a href="" class="text-decoration-none">API</a>
            •
            {{! TODO }}
            <a href="" class="text-decoration-none">Integration</a>
            •
            {{! TODO }}
            <a href="" class="text-decoration-none">Donators</a>
            •
            {{! TODO }}
            <a href="" class="text-decoration-none">Clear data</a>
            {{! TODO }}
          </p>
          {{! TODO: revise this }}
          <p>The information presented on this site about Android: Netrunner, both
            literal and graphical, is copyrighted by Fantasy Flight Games and/or
            Null Signal Games.</p>
          <p>This website is not produced, endorsed, supported, or affiliated with
            Fantasy Flight Games.</p>
        </div>
      </div>
    </div>
  </div>
</template>
