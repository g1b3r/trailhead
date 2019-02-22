/**
 * Created by Cezu on 2019-01-25.
 */

public with sharing class UpdateContactPageLayout {
    public Metadata.Layout addLayoutItem() {
        List<Metadata.Metadata> layouts =
            Metadata.Operations.retrieve(Metadata.MetadataType.Layout,
                new List<String> {'Contact-Contact Layout'});
        Metadata.Layout layoutMd = (Metadata.Layout) layouts.get(0);
        Metadata.LayoutSection layoutSectionToEdit = null;
        List<Metadata.LayoutSection> layoutSections = layoutMd.layoutSections;
        for (Metadata.LayoutSection section : layoutSections) {

            if (section.label == 'Contact Information') {
                layoutSectionToEdit = section;
                break;
            }
        }

        // Add the field under Account info section in the left column
        List<Metadata.LayoutColumn> layoutColumns = layoutSectionToEdit.layoutColumns;
        List<Metadata.LayoutItem> layoutItems = layoutColumns.get(0).layoutItems;

        // Create a new layout item for the custom field
        Metadata.LayoutItem item = new Metadata.LayoutItem();
        item.behavior = Metadata.UiBehavior.Edit;
        item.field = 'Name';
        layoutItems.add(item);

        return layoutMd;

    }

}