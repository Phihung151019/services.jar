.class public final synthetic Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;Landroid/os/Message;)V
    .locals 2

    iget p0, p0, Lcom/android/server/wm/MultiTaskingController$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget p0, p2, Landroid/os/Message;->arg1:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    iget p2, p2, Landroid/os/Message;->arg2:I

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-interface {p1, p0, v0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onWallpaperVisibilityChanged(ZZ)V

    return-void

    :pswitch_0
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartHomeAnimation(Z)V

    return-void

    :pswitch_1
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onFinishRecentsAnimation(Z)V

    return-void

    :pswitch_2
    iget p0, p2, Landroid/os/Message;->arg1:I

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    invoke-interface {p1, p0}, Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;->onStartRecentsAnimation(Z)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
