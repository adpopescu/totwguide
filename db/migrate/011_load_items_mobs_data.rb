class LoadItemsMobsData < ActiveRecord::Migration
  def self.up
    down

    items_and_mobs = [
      [ "Breathing Space", [ "Reverend Hyuan" ] ],
      [ "Magical Stave of Inferno", [ "Reverend Hyuan" ] ],
      [ "North Wind Katana", [ "Eternal Sentienal", "Eternal Guardian" ] ],
      [ "South Wind Katana", [ "Eternal Sentienal", "Eternal Guardian" ] ],
      [ "West Wind Katana", [ "Eternal Sentienal", "Eternal Guardian" ] ],
      [ "Ring of Memory Loss", [ "Lien the Memorystalker" ] ],
      [ "Bronze Ring of the Three", [ "Cultist", "Cyth the Faithful", "Caska the Faithful", "Malikai the Faithful", "The Curator" ] ],
      [ "Silver Ring of the Three", [ "Acolyte Felid", "Acolyte Betany", "Acolyte Amber", "Reverend Cadelly" ] ],
      [ "Gold Ring of the Three", [ "Reverend Cadelly" ] ],
      [ "Platinum Ring of the Three (BioMet/MatMet)", [ "Windcaller Donnel" ] ],
      [ "Platinum Ring of the Three (MatCreation/SpaceTime)", [ "The Curator" ] ],
      [ "Platinum Ring of the Three (PsyMod/SensoryImp)", [ "The Curator" ] ],
      [ "Notum Ring of the Three (BioMet/MatMet)", [ "The Curator" ] ],
      [ "Notum Ring of the Three (MatCreation/SpaceTime)", [ "The Curator" ] ],
      [ "Notum Ring of the Three (PsyMod/SensoryImp)", [ "Exarch Ecclese", "The Curator", "Exarch Li-Po" ] ],
      [ "Ring of Tattered Flame", [ "Exarch Pilvar", "Aztur the Immortal", "Guardian of Tomorrow", "Exarch Truan", "Uklesh the Frozen" ] ],
      [ "Ring of Weeping Flesh", [ "Exarch Li-Po", "Exarch Gevarain", "Exarch Truan", "Defender of the Three", "Exarch Ecclese", "Gartua the Doorkeeper", "Nematet the Custodian of Time" ] ],
      [ "Bloodleech Ring", [ "Windcaller Yatila", "Exarch Gevarain", "Guardian of Tomorrow", "Gartua the Doorkeeper" ] ],
      [ "Ring of Eternal Night", [ "Exarch Li-Po", "Khalum", "Aztur the Immortal", "Guardian of Tomorrow" ] ],
      [ "Guardian Circuit Board", [ "Guardian of Tomorrow" ] ],
      [ "Dark Memories", [ "Lien the Memorystalker" ] ],
      [ "Memory Loop", [ "Lien the Memorystalker" ] ],
      [ "Purifying Rod", [ "Khalum", "Aztur the Immortal", "The Reanimator", "Guardian of Tomorrow", "Uklesh the Frozen" ] ],
      [ "Nematets Inner Eye", [ "Nematet the Custodian of Time" ] ],
      [ "Skull of the Ancient", [ "Aztur the Immortal" ] ],
      [ "Notum Splice", [ "Defender of the Three" ] ],
      [ "Keepers Vitality", [ "Gartua the Doorkeeper" ] ],
      [ "Touch of the Gripper", [ "Nematet the Custodian of Time" ] ],
      [ "Barrow Strength", [ "Uklesh the Frozen", "Windcaller Yatila", "The Reanimator" ] ],
      [ "Withered Flesh", [ "The Reanimator" ] ],
      [ "Shadowfade Armor (Body)", [ "Windcaller Tilla", "Windcaller Yen", "Windcaller Rendal" ] ],
      [ "Shadowfade Armor (Sleeves)", [ "Reverend Saxx", "Reverend Cadelly", "Reverend Oluay" ] ],
      [ "Shadowfade Armor (Gloves)", [ "Reverend Julaan", "Reverend Gulard" ] ],
      [ "Shadowfade Armor (Pants)", [ "Windcaller Yen", "Reverend Julaan", "Reverend Saxx" ] ],
      [ "Shadowfade Armor (Boots)", [ "Windcaller Yen", "Windcaller Rendal" ] ],
      [ "Shadowfade Armor (Helmet)", [ "Windcaller Rendal" ] ],
      [ "Temporal Chalice", [ "Nematet the Custodian of Time" ] ],
      [ "Crumbling Funeral Urn", [ "The Reanimator", "Lien the Memorystalker" ] ],
      [ "Tattered book: Ape Fist of Khalum (section 1)", [ "Cultist", "Oran the Faithful", "Murial the Faithful", "Nathan the Faithful" ] ],
      [ "Tattered book: Ape Fist of Khalum (section 2)", [ "Pallen the Faithful", "Nathan the Faithful", "Cultist" ] ],
      [ "Tattered book: Ape Fist of Khalum (section 3)", [ "Reverend Gulard", "Reverend Julaan", "Acolyte Dominic", "Acolyte Kellian", "Acolyte Seleen", "Reverend Cadelly", "Acolyte Betany", "Cultist" ] ],
      [ "Tattered book: Ape Fist of Khalum (section 4)", [ "Reverend Cadelly", "Reverend Saxx" ] ],
      [ "Tattered book: Ape Fist of Khalum (section 5)", [ "Acolyte Verona", "Acolyte Kalen", "Exarch Li-Po", "Exarch Gevarain", "Reverend Cadelly", "Exarch Ecclese", "Acolyte Betany" ] ],
      [ "Tattered book: Tree of Enlightenment (section 1)", [ "Cultist", "Murial the Faithful" ] ],
      [ "Tattered book: Tree of Enlightenment (section 2)", [ "Murial the Faithful" ] ],
      [ "Tattered book: Tree of Enlightenment (section 3)", [ "Acolyte Seleen", "Acolyte Dominic" ] ],
      [ "Tattered book: Tree of Enlightenment (section 4)", [ "Acolyte Seleen", "Acolyte Dominic", "Reverend Gulard", "Reverend Saxx" ] ],
      [ "Tattered book: Tree of Enlightenment (section 5)", [ "Reverend Saxx", "Exarch Ecclese", "Acolyte Bryant", "Reverend Gulard", "Windcaller Yen", "Exarch Truan", "Exarch Pilvar", "Reverend Oluay" ] ],
      [ "Tattered book: Tree of Enlightenment (section 6)", [ "Exarch Gevarain", "Exarch Pilvar", "Exarch Ecclese", "Acolyte Kalen", "Acolyte Seleen", "Reverend Dashell", "Reverend Julaan", "Acolyte Kellian" ] ],
      [ "Frozen Tear of Uklesh", [ "Uklesh the Frozen" ] ],
      [ "Phase Blade", [ "Reverend Gulard", "Exarch Truan", "Defender of the Three", "Reverend Hyuan", "Windcaller Rendal" ] ],
      [ "Frost Scythe of the Legionnaire", [ "Deathless Legionnaire" ] ],
      [ "Energy Scythe", [ "Windcaller Rendal", "Exarch Gevarain", "Exarch Truan", "Exarch Ecclese", "Reverend Cadelly" ] ],
      [ "Guardian Tank Armor", [ "Guardian of Tomorrow" ] ],
      [ "Howling Skull", [ "Reverend Gulard", "Exarch Ecclese", "Exarch Pilvar", "Defender of the Three", "Exarch Li-Po" ] ],
      [ "Skull of Woe", [ "Lien the Memorystalker", "The Reanimator" ] ],
      [ "Skull of Lamentation", [ "Lien the Memorystalker", "The Reanimator" ] ],
      [ "Stygian Desolator", [ "Aztur the Immortal" ] ],
      [ "Bracelet of Amplified Sound", [ "Guardian of Tomorrow" ] ],
      [ "Fist of Orion", [ "Uklesh the Frozen" ] ],
      [ "Rockcrusher Gauntlets", [ "The Curator", "Gartua the Doorkeeper" ] ],
      [ "Exarch Robe", [ "Exarch Ecclese", "Exarch Pilvar", "Exarch Truan", "Exarch Li-Po", "Exarch Gevarain" ] ],
      [ "Windcaller Robe", [ "Windcaller Tilla", "Windcaller Donnel" ] ],
      [ "Robe of the Faithful", [ "Cyth the Faithful", "Malikai the Faithful", "Caska the Faithful" ] ],
      [ "Reverend Robe", [ "Reverend Dashell", "Reverend Cadelly" ] ],
      [ "Acolyte Robe", [ "Acolyte Kellian", "Acolyte Betany", "Acolyte Verona", "Acolyte Opet" ] ],
      [ "Holy Book of the Immortal", [ "Aztur the Immortal" ] ],
      [ "Nano Crystal (Liens Crystalizer)", [ "Windcaller Yatila" ] ],
      [ "East Wind Katana", [ "Eternal Guardian" ] ]
    ]

    for i in items_and_mobs
      item = Item.find_by_name(i[0]) 
      for m in i[1]
        item.mobs << Mob.find_by_name(m)
      end
    end
  end

  def self.down
    ItemsMob.delete_all
  end
end
