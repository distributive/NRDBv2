import Component from '@glimmer/component';
import { LinkTo } from '@ember/routing';
import { service } from '@ember/service';
import FaIcon from '@fortawesome/ember-fontawesome/components/fa-icon';
import Icon from './icon';

export default class DecklistBoxCompactComponent extends Component {
  @service store;

  constructor(...args) {
    super(...args);

    let identityCardId = this.args.decklist.identityCardId;
    let userId = this.args.decklist.userId;

    this.identityCard = this.store.findRecord('card', identityCardId);
    this.user = userId; // TEMP
  }

  <template>
    <div class='decklist-box-compact'>
      <div class='row mx-2'>
        <div class='col-12 col-lg-9 decklist-stats'>
          <p class='decklist-identity-name fw-600'>
            {{#if this.identityCard}}
              <span class='font-size-18'>
                <Icon @icon={{this.identityCard.faction.id}} />
              </span>
              <span class='decklist-identity-title font-size-14 fw-600'>
                {{this.identityCard.title}}
              </span>
            {{/if}}
          </p>
          <p class='decklist-name font-size-20'>
            {{@decklist.name}}
          </p>
          <p class='mt-3 font-size-14'>
            <span class='decklist-author'>
              {{this.user}}
              (1187)
            </span>
            <LinkTo @route='home' class='button round d-inline'>
              <FaIcon @icon='certificate' />
              2024 Accelerated Meta Test</LinkTo>
            <LinkTo @route='home' class='button round d-inline'>
              <FaIcon @icon='arrow-rotate-right' />
              Sixth rotation</LinkTo>
          </p>
        </div>
        <div class='col-12 col-lg-3 mt-3 mt-lg-0'>
          <div
            class='text-center d-flex flex-column justify-content-center h-100'
          >
            <div class='row'>
              <div class='col col-lg-12 decklist-date'>17 Dec. 2023</div>
              <div class='col col-lg-12 decklist-notes'>
                <span class='likes'><FaIcon @icon='heart' /> 19</span>
                <span class='stars ms-3'><FaIcon @icon='star' /> 8</span>
                <span class='comments ms-3'><FaIcon @icon='message' /> 5</span>
              </div>
            </div>
          </div>
          {{! <LinkTo @route='home' class='button'>
          <Icon @icon='subroutine' />
          View deck
        </LinkTo> }}
        </div>
      </div>
    </div>
  </template>
}
