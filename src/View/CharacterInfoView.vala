namespace DungeonJournal
{
    [GtkTemplate (ui = "/io/github/trytonvanmeer/DungeonJournal/ui/character/info.ui")]
    public class CharacterInfoView : Gtk.Bin
    {
        [GtkChild]
        private CharacterEntry name_character_entry;

        [GtkChild]
        private CharacterEntry class_character_entry;

        [GtkChild]
        private CharacterEntry race_character_entry;

        [GtkChild]
        private Gtk.ComboBoxText alignment_character_entry;

        [GtkChild]
        private CharacterEntryAdjustment level_character_entry;

        [GtkChild]
        private CharacterEntryAdjustment xp_character_entry;

        public void bind_character(ref CharacterSheet character)
        {
            character.bind_property("name", this.name_character_entry.entry, "text", BindingFlags.SYNC_CREATE | BindingFlags.BIDIRECTIONAL);
            character.bind_property("class", this.class_character_entry.entry, "text", BindingFlags.SYNC_CREATE | BindingFlags.BIDIRECTIONAL);
            character.bind_property("race", this.race_character_entry.entry, "text", BindingFlags.SYNC_CREATE | BindingFlags.BIDIRECTIONAL);
            character.bind_property("alignment", this.alignment_character_entry, "active", BindingFlags.SYNC_CREATE | BindingFlags.BIDIRECTIONAL);
            character.bind_property("level", this.level_character_entry.adjustment, "value", BindingFlags.SYNC_CREATE | BindingFlags.BIDIRECTIONAL);
            character.bind_property("xp", this.xp_character_entry.adjustment, "value", BindingFlags.SYNC_CREATE | BindingFlags.BIDIRECTIONAL);
        }
    }
}