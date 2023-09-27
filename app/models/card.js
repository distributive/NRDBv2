import Model, { attr, belongsTo, hasMany } from '@ember-data/model';

export default class CardModel extends Model {
  // Universal
  @attr strippedTitle;
  @attr title;
  @attr strippedText;
  @attr text;
  @attr cardTypeId;
  @attr sideId;
  @attr factionId;
  @attr deckLimit;
  @attr numPrintings;
  @attr printingIds;
  @attr latestPrintingId;
  @attr isUnique;
  @attr dateRelease;
  @attr cardSubtypeIds;
  @attr displaySubtypes;
  @attr cardAbilities;

  // General
  @attr cost;
  @attr influenceCost;
  @attr memoryCost;
  @attr strength;
  @attr trashCost;
  @attr attribution;

  // ID
  @attr baseLink;
  @attr influenceLimit;
  @attr minimumDeckSize;

  // Agenda
  @attr advancementRequirement;
  @attr agendaPoints;

  // Meta
  @attr inRestriction;
  @attr restrictionIds;
  @attr formatIds;
  @attr cardPoolIds;
  @attr snapshotIds;
  @attr restrictions;

  // Misc
  @attr updatedAt;

  // Relationships
  @belongsTo('side', { async: true, inverse: 'cards' }) side;
  @belongsTo('faction', { async: true, inverse: 'cards' }) faction;
  @belongsTo('card-type', { async: true, inverse: 'cards' }) cardType;
  @belongsTo('card-subtype', { async: true, inverse: 'cards' }) cardSubtype;
  @hasMany('printing', { async: false, inverse: 'card' }) printings;
  @hasMany('ruling', { async: true, inverse: 'card'}) rulings;
}
