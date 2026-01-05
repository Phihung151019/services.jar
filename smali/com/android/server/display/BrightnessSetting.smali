.class public final Lcom/android/server/display/BrightnessSetting;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBrightness:F

.field public final mHandler:Lcom/android/server/display/BrightnessSetting$1;

.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public final mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

.field public final mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

.field public final mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

.field public mUserSerial:I


# direct methods
.method public constructor <init>(ILcom/android/server/display/PersistentDataStore;Lcom/android/server/display/LogicalDisplay;Lcom/android/server/display/DisplayManagerService$SyncRoot;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/BrightnessSetting$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/BrightnessSetting$1;-><init>(Lcom/android/server/display/BrightnessSetting;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Lcom/android/server/display/BrightnessSetting$1;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iput-object p2, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iput-object p3, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    iget-object p3, p3, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/android/server/display/DisplayDevice;->hasStableUniqueId()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iget-object p3, p3, Lcom/android/server/display/DisplayDevice;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p2, p3, v0}, Lcom/android/server/display/PersistentDataStore;->getDisplayState(Ljava/lang/String;Z)Lcom/android/server/display/PersistentDataStore$DisplayState;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p1}, Lcom/android/server/display/PersistentDataStore$DisplayState;->getBrightness(I)F

    move-result p1

    goto :goto_1

    :cond_2
    :goto_0
    const/high16 p1, 0x7fc00000    # Float.NaN

    :goto_1
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    iput-object p4, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    return-void
.end method


# virtual methods
.method public final setBrightness(F)V
    .locals 4

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BrightnessSetting"

    const-string p1, "Attempting to set invalid brightness"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/BrightnessSetting;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mPersistentDataStore:Lcom/android/server/display/PersistentDataStore;

    iget-object v2, p0, Lcom/android/server/display/BrightnessSetting;->mLogicalDisplay:Lcom/android/server/display/LogicalDisplay;

    iget-object v2, v2, Lcom/android/server/display/LogicalDisplay;->mPrimaryDisplayDevice:Lcom/android/server/display/DisplayDevice;

    iget v3, p0, Lcom/android/server/display/BrightnessSetting;->mUserSerial:I

    invoke-virtual {v1, v2, p1, v3}, Lcom/android/server/display/PersistentDataStore;->setBrightness(Lcom/android/server/display/DisplayDevice;FI)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/display/BrightnessSetting;->mBrightness:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    iget-object v1, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Lcom/android/server/display/BrightnessSetting$1;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/display/BrightnessSetting;->mHandler:Lcom/android/server/display/BrightnessSetting$1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
