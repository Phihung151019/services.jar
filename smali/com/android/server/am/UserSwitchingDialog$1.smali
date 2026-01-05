.class public final Lcom/android/server/am/UserSwitchingDialog$1;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$onAnimationEndWithTimeout:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;


# direct methods
.method public constructor <init>(Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/UserSwitchingDialog$1;->val$onAnimationEndWithTimeout:Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;

    invoke-virtual {p0}, Lcom/android/server/am/UserSwitchingDialog$$ExternalSyntheticLambda4;->run()V

    return-void
.end method
