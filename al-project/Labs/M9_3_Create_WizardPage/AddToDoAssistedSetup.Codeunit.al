codeunit 50133 AddToDoAssistedSetup
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Guided Experience", 'OnRegisterAssistedSetup', '', true, true)]
    local procedure OnRegisterAssistedSetup()
    var
        AssistedSetup: Codeunit "Guided Experience";
        GuidedExperienceType: Enum "Guided Experience Type";
        AssistedSetupGroup: Enum "Assisted Setup Group";
        VideoCategory: Enum "Video Category";
    begin
        if not AssistedSetup.Exists(GuidedExperienceType::"Assisted Setup",
            ObjectType::Page,
            Page::ToDoAssistedSetup) then
            AssistedSetup.InsertAssistedSetup(
                'Add a to-do',
                'Create a task for your team',
                'Register a task for your team and assign people',
                1,
                ObjectType::Page,
                Page::ToDoAssistedSetup,
                AssistedSetupGroup::Tasks,
                '',
                VideoCategory::Uncategorized,
                '');
    end;
}
