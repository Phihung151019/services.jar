.class public final synthetic Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p2, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final run$com$android$server$broadcastradio$aidl$RadioModule$1$$ExternalSyntheticLambda1()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/broadcastradio/ProgramInfo;

    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->logicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v1, v1, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    const/16 v2, 0x7cf

    const/16 v3, 0x3e8

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    const/4 v5, 0x2

    if-eq v1, v5, :cond_0

    const/4 v5, 0x3

    if-eq v1, v5, :cond_0

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    const/16 v5, 0x9

    if-eq v1, v5, :cond_0

    const/16 v5, 0xc

    if-eq v1, v5, :cond_0

    if-lt v1, v3, :cond_1

    if-gt v1, v2, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/hardware/broadcastradio/ProgramInfo;->physicallyTunedTo:Landroid/hardware/broadcastradio/ProgramIdentifier;

    iget v1, v1, Landroid/hardware/broadcastradio/ProgramIdentifier;->type:I

    if-eq v1, v4, :cond_2

    const/16 v4, 0x8

    if-eq v1, v4, :cond_2

    const/16 v4, 0xa

    if-eq v1, v4, :cond_2

    const/16 v4, 0xd

    if-eq v1, v4, :cond_2

    if-lt v1, v3, :cond_1

    if-gt v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->programInfoFromHalProgramInfo(Landroid/hardware/broadcastradio/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object p0

    :goto_1
    const-string/jumbo v1, "Program info from AIDL HAL is invalid"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iput-object p0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mCurrentProgramInfo:Landroid/hardware/radio/RadioManager$ProgramInfo;

    new-instance v2, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, [Landroid/hardware/broadcastradio/VendorKeyValue;

    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/android/server/broadcastradio/aidl/ConversionUtils;->vendorInfoFromHalVendorKeyValues([Landroid/hardware/broadcastradio/VendorKeyValue;)Ljava/util/Map;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$1$$ExternalSyntheticLambda7;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->run$com$android$server$broadcastradio$aidl$RadioModule$1$$ExternalSyntheticLambda1()V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Landroid/hardware/broadcastradio/ProgramListChunk;

    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v1, v1, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v2, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v2, v2, Lcom/android/server/broadcastradio/aidl/RadioModule;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    const/16 v3, 0x1f4

    const/16 v4, 0x64

    invoke-virtual {v2, p0, v4, v3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/ProgramListChunk;II)Ljava/util/List;

    const/4 v2, 0x0

    :goto_0
    iget-object v5, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, v0, Lcom/android/server/broadcastradio/aidl/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object v5, v5, Lcom/android/server/broadcastradio/aidl/RadioModule;->mAidlTunerSessions:Landroid/util/ArraySet;

    invoke-virtual {v5, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/broadcastradio/aidl/TunerSession;

    iget-object v6, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v7, v5, Lcom/android/server/broadcastradio/aidl/TunerSession;->mProgramInfoCache:Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;

    if-nez v7, :cond_0

    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_0
    invoke-virtual {v7, p0, v4, v3}, Lcom/android/server/broadcastradio/aidl/ProgramInfoCache;->filterAndApplyChunkInternal(Landroid/hardware/broadcastradio/ProgramListChunk;II)Ljava/util/List;

    move-result-object v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v5, v7}, Lcom/android/server/broadcastradio/aidl/TunerSession;->dispatchClientUpdateChunks(Ljava/util/List;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw p0

    :catchall_2
    move-exception p0

    goto :goto_3

    :cond_1
    monitor-exit v1

    return-void

    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/aidl/RadioModule;

    iget-object p0, p0, Lcom/android/server/broadcastradio/aidl/RadioModule$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;

    iget-object v1, v0, Lcom/android/server/broadcastradio/aidl/RadioModule;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_6
    invoke-virtual {v0, p0}, Lcom/android/server/broadcastradio/aidl/RadioModule;->fanoutAidlCallbackLocked(Lcom/android/server/broadcastradio/aidl/RadioModule$AidlCallbackRunnable;)V

    monitor-exit v1

    return-void

    :catchall_3
    move-exception p0

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
