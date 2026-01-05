.class public final synthetic Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/media/projection/MediaProjectionInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/media/projection/MediaProjectionInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/MediaProjectionInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/ScreenRecordingCallbackController$$ExternalSyntheticLambda1;->f$0:Landroid/media/projection/MediaProjectionInfo;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionInfo;->getLaunchCookie()Landroid/app/ActivityOptions$LaunchCookie;

    move-result-object p0

    iget-object p0, p0, Landroid/app/ActivityOptions$LaunchCookie;->binder:Landroid/os/IBinder;

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
