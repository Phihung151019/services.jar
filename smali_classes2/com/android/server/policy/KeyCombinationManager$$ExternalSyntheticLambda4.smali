.class public final synthetic Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

.field public final synthetic f$1:Landroid/view/KeyEvent;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;Landroid/view/KeyEvent;ZI)V
    .locals 0

    iput p4, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iput-object p2, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/KeyEvent;

    iput-boolean p3, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$2:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/KeyEvent;

    iget-boolean p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$2:Z

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v2, p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;

    iget-object v1, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$1:Landroid/view/KeyEvent;

    iget-boolean p0, p0, Lcom/android/server/policy/KeyCombinationManager$$ExternalSyntheticLambda4;->f$2:Z

    new-instance v2, Landroid/view/KeyEvent;

    invoke-direct {v2, v1}, Landroid/view/KeyEvent;-><init>(Landroid/view/KeyEvent;)V

    invoke-virtual {v0, v2, p0}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;->cancel(Landroid/view/KeyEvent;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
