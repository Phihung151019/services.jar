.class public final Lcom/android/server/am/UserSwitchingDialog$2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic val$onAnimationEndWithTimeout:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$2;->val$onAnimationEndWithTimeout:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$2;->val$onAnimationEndWithTimeout:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->run()V

    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
