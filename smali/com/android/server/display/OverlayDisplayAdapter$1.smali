.class public final Lcom/android/server/display/OverlayDisplayAdapter$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    if-nez v2, :cond_0

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    iget-object v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    iget v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v2, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    iget v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/android/server/display/OverlayDisplayWindow;->resize(IIIZ)V

    :goto_0
    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_2
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/display/OverlayDisplayWindow;->dismiss()V

    :cond_1
    return-void

    :catchall_1
    move-exception v0

    move-object p0, v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v1, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mModes:Ljava/util/List;

    iget v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mActiveMode:I

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;

    new-instance v1, Lcom/android/server/display/OverlayDisplayWindow;

    iget-object v2, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    move-object v10, v2

    check-cast v10, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v2, v10, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, v2, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    iget-object v3, v10, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mWidth:I

    iget v5, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mHeight:I

    iget v6, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayMode;->mDensityDpi:I

    iget v7, v10, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mGravity:I

    iget-object v0, v10, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mFlags:Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;

    iget-boolean v8, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mSecure:Z

    iget-boolean v9, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayFlags;->mDisableWindowInteraction:Z

    invoke-direct/range {v1 .. v10}, Lcom/android/server/display/OverlayDisplayWindow;-><init>(Landroid/content/Context;Ljava/lang/String;IIIIZZLcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;)V

    iget-boolean v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    if-nez v0, :cond_3

    iget-object v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, v1, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayWindow;->updateDefaultDisplayInfo()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, v1, Lcom/android/server/display/OverlayDisplayWindow;->mDisplayListener:Lcom/android/server/display/OverlayDisplayWindow$1;

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationX:F

    iput v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mLiveTranslationY:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mLiveScale:F

    invoke-virtual {v1}, Lcom/android/server/display/OverlayDisplayWindow;->updateWindowParams()V

    iget-object v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, v1, Lcom/android/server/display/OverlayDisplayWindow;->mWindowContent:Landroid/view/View;

    iget-object v3, v1, Lcom/android/server/display/OverlayDisplayWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/android/server/display/OverlayDisplayWindow;->mWindowVisible:Z

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iget-object v0, v0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v2, v0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v2

    :try_start_4
    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;

    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayHandle;->mWindow:Lcom/android/server/display/OverlayDisplayWindow;

    monitor-exit v2

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v0, v0, Lcom/android/server/display/DisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "overlay_display_devices"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/display/OverlayDisplayAdapter$1$1;

    iget-object v3, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v3, v3, Lcom/android/server/display/DisplayAdapter;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/display/OverlayDisplayAdapter$1$1;-><init>(Lcom/android/server/display/OverlayDisplayAdapter$1;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/android/server/display/OverlayDisplayAdapter$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/display/OverlayDisplayAdapter;

    iget-object v1, p0, Lcom/android/server/display/DisplayAdapter;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v1

    :try_start_5
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter;->updateOverlayDisplayDevicesLocked()V

    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
