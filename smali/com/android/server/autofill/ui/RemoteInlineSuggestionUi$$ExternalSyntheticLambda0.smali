.class public final synthetic Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnErrorCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;

    invoke-virtual {p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector$$ExternalSyntheticLambda0;->run()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onLongClick()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p0, "RemoteInlineSuggestionUi"

    const-string/jumbo v0, "RemoteException calling onLongClick"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object v0, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mOnAutofillCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineContentCallback:Lcom/android/internal/view/inline/IInlineContentCallback;

    if-eqz p0, :cond_1

    :try_start_1
    invoke-interface {p0}, Lcom/android/internal/view/inline/IInlineContentCallback;->onClick()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string/jumbo p0, "RemoteInlineSuggestionUi"

    const-string/jumbo v0, "RemoteException calling onClick"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :pswitch_2
    const-string/jumbo v0, "RemoteInlineSuggestionUi"

    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    :try_start_2
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "releasing the host"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    invoke-interface {v1}, Landroid/service/autofill/IInlineSuggestionUi;->releaseSurfaceControlViewHost()V

    iput-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    const-string/jumbo v1, "RemoteException calling releaseSurfaceControlViewHost"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    iput-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    return-void

    :pswitch_3
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->handleUpdateRefCount(I)V

    return-void

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mDelayedReleaseViewRunnable:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$$ExternalSyntheticLambda0;

    :cond_4
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUi:Landroid/service/autofill/IInlineSuggestionUi;

    const-string/jumbo v2, "RemoteInlineSuggestionUi"

    if-nez v0, :cond_e

    iget-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    if-eqz v0, :cond_5

    sget-boolean p0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz p0, :cond_f

    const-string p0, "Inline suggestion ui is not ready"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mRemoteInlineSuggestionViewConnector:Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;

    iget-object v2, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    invoke-virtual {v2}, Landroid/service/autofill/InlinePresentation;->getSlice()Landroid/app/slice/Slice;

    move-result-object v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2}, Landroid/app/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/slice/SliceItem;

    invoke-virtual {v5}, Landroid/app/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Landroid/app/slice/SliceItem;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_9

    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v6

    const/4 v7, 0x6

    if-eq v6, v7, :cond_9

    goto :goto_3

    :cond_9
    invoke-virtual {v5}, Landroid/graphics/drawable/Icon;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v3}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v5

    if-eq v5, v3, :cond_7

    const-string/jumbo v2, "sanitizeSlice() user: "

    const-string v4, " cannot access icons in Slice"

    const-string v5, "AutofillHelper"

    invoke-static {v3, v2, v4, v5}, Lcom/android/server/accessibility/BrailleDisplayConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    move-object v1, v2

    :goto_4
    const-string/jumbo v2, "RemoteInlineSuggestionViewConnector"

    if-nez v1, :cond_b

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "Skipped rendering inline suggestion."

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_c

    const-string/jumbo v1, "Request to recreate the UI"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v5, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mInlinePresentation:Landroid/service/autofill/InlinePresentation;

    iget-object v8, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mHostInputToken:Landroid/os/IBinder;

    iget v10, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mUserId:I

    iget v11, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mSessionId:I

    iget-object v3, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mRemoteRenderService:Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;

    iget-object v4, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mInlineSuggestionUiCallback:Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$InlineSuggestionUiCallbackImpl;

    iget v6, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWidth:I

    iget v7, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mHeight:I

    iget v9, v0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionViewConnector;->mDisplayId:I

    invoke-virtual/range {v3 .. v11}, Lcom/android/server/autofill/RemoteInlineSuggestionRenderService;->renderSuggestion(Landroid/service/autofill/IInlineSuggestionUiCallback;Landroid/service/autofill/InlinePresentation;IILandroid/os/IBinder;III)V

    :cond_d
    :goto_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;->mWaitingForUiCreation:Z

    goto :goto_6

    :cond_e
    :try_start_3
    new-instance v1, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;

    invoke-direct {v1, p0}, Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi$1;-><init>(Lcom/android/server/autofill/ui/RemoteInlineSuggestionUi;)V

    invoke-interface {v0, v1}, Landroid/service/autofill/IInlineSuggestionUi;->getSurfacePackage(Landroid/service/autofill/ISurfacePackageResultCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    const-string/jumbo p0, "RemoteException calling getSurfacePackage."

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_6
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
