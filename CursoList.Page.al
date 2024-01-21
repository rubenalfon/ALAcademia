page 50105 "Cursos"
{
    Caption = 'Cursos';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Curso;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                ShowCaption = false;
                field("Id Curso"; Rec."Id Curso") { ApplicationArea = All; }
                field(Nombre; Rec.Nombre) { ApplicationArea = All; }
                field(Descripcion; Rec.Descripcion) { ApplicationArea = All; }
                field("Horas Totales"; Rec."Horas Totales") { ApplicationArea = All; }
                field("Tarifa Laboratorio"; Rec."Tarifa Laboratorio") { ApplicationArea = All; }
                field(Profesor; Rec."Id Profesor") { ApplicationArea = All; }
            }
        }
    }
}