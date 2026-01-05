.class public final synthetic Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/am/UserSwitchingDialog;

.field public final synthetic f$1:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserSwitchingDialog;

    iput-object p2, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserSwitchingDialog;

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;

    const-string/jumbo v1, "spinnerAnimation"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;->run()V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/am/UserSwitchingDialog;

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->f$1:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;

    const-string/jumbo v1, "showAnimation"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceEnd(ILjava/lang/String;)V

    const-string/jumbo v1, "spinnerAnimation"

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/android/server/am/UserSwitchingDialog;->asyncTraceBegin(ILjava/lang/String;)V

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;

    const/4 v3, 0x1

    invoke-direct {v1, v0, p0, v3}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/UserSwitchingDialog;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda1;I)V

    const p0, 0x10204f9

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of v3, p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_0

    check-cast p0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    iget-boolean v3, v0, Lcom/android/server/am/UserSwitchingDialog;->mDisableAnimations:Z

    if-nez v3, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v2, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0, v3, v1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/UserSwitchingDialog;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/android/server/am/UserSwitchingDialog;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;

    const-string/jumbo v3, "spinner"

    invoke-direct {v1, v3, v2}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    const/16 v3, 0xa0

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;IJ)Z

    new-instance v0, Lcom/android/server/am/UserSwitchingDialog$1;

    invoke-direct {v0, v2}, Lcom/android/server/am/UserSwitchingDialog$1;-><init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda2;->run()V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
