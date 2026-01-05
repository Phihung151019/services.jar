.class public final synthetic Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/audio/MediaFocusControl;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/audio/MediaFocusControl;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/MediaFocusControl;

    iput p2, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/audio/MediaFocusControl;

    iget v1, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/audio/MediaFocusControl$$ExternalSyntheticLambda1;->f$3:Z

    check-cast p1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "MediaFocusControl"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "focusRequester.getClientId()="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/android/server/audio/FocusRequester;->mClientId:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p1, Lcom/android/server/audio/FocusRequester;->mDevice:I

    sget-object v3, Lcom/android/server/audio/MediaFocusControl;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    if-eqz v1, :cond_1

    :try_start_0
    iget v4, v0, Lcom/android/server/audio/MediaFocusControl;->mDevice:I

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/android/server/audio/MediaFocusControl;->mMultiFocusStack:Lcom/android/server/audio/MultiFocusStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/audio/MultiFocusStack;->getStackForDevice(I)Ljava/util/Stack;

    move-result-object v0

    :goto_1
    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const/4 v1, 0x1

    if-eqz v2, :cond_2

    if-nez p0, :cond_2

    const-string/jumbo p0, "MediaFocusControl"

    const-string/jumbo v2, "pin app playing"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {p0, v1, p1, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    goto :goto_2

    :cond_2
    const-string/jumbo p0, "MediaFocusControl"

    const-string/jumbo v2, "pin app paused"

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v1, p1, v1}, Lcom/android/server/audio/FocusRequester;->handleFocusLossFromGain(ILcom/android/server/audio/FocusRequester;Z)Z

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz p0, :cond_4

    iget v1, p0, Lcom/android/server/audio/FocusRequester;->mFocusGainRequest:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/server/audio/FocusRequester;

    goto :goto_3

    :cond_3
    :goto_2
    move-object p0, v4

    :cond_4
    :goto_3
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_5

    invoke-virtual {v0, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz p0, :cond_6

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
