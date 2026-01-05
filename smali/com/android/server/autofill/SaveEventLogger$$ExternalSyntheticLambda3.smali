.class public final synthetic Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget p0, p0, Lcom/android/server/autofill/SaveEventLogger$$ExternalSyntheticLambda3;->$r8$classId:I

    check-cast p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    iput p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveUiTriggerIds:I

    return-void

    :pswitch_0
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mDialogDismissed:Z

    return-void

    :pswitch_1
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mSaveButtonClicked:Z

    return-void

    :pswitch_2
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mCancelButtonClicked:Z

    return-void

    :pswitch_3
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsFrameworkCreatedSaveInfo:Z

    return-void

    :pswitch_4
    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/autofill/SaveEventLogger$SaveEventInternal;->mIsNewField:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
