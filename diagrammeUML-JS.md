```mermaid
classDiagram
    class ControllerStudentStatementAPI {
        +create(req, res)
        +read(req, res)
        +update(req, res)
    }

    class ModelStudentStatement {
        +ps_id: string
        +user_id: string
        +ex_id: string
        +availability_date: string
        +deadline_date: string
        +statement: string
        +is_sended: boolean
        +file: string
        +save(): string
        +update(): boolean
        +read(ps_id: string, user_id: string, ex_id: string): object
    }

    class ModelExercise {
        +readById(exerciseId: string): object
    }

    class ModelPlageSession {
        +read(businessSessionId: string): object
    }

    class ModelSequence {
        +read(seq_id: string): array
    }

    class ModelExerciseProduction {
        +readStuExList(userId: string, exId: string): array
    }

    ControllerStudentStatementAPI --> ModelStudentStatement : Uses
    ControllerStudentStatementAPI --> ModelExercise : Uses
    ControllerStudentStatementAPI --> ModelPlageSession : Uses
    ControllerStudentStatementAPI --> ModelSequence : Uses
    ControllerStudentStatementAPI --> ModelExerciseProduction : Uses
