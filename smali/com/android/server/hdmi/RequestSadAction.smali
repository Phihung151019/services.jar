.class public final Lcom/android/server/hdmi/RequestSadAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final RETRY_COUNTER_MAX:I = 0x3


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

.field public final mCecCodecsToQuery:Ljava/util/List;

.field public mQueriedSadCount:I

.field public final mSupportedSads:Ljava/util/List;

.field public final mTargetAddress:I

.field public mTimeoutRetry:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    iput-object p2, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    const-string/jumbo p2, "query_sad_lpcm"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string/jumbo p2, "query_sad_dd"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_1

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo p2, "query_sad_mpeg1"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_2

    const/4 p2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const-string/jumbo p2, "query_sad_mp3"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_3

    const/4 p2, 0x4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string/jumbo p2, "query_sad_mpeg2"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string/jumbo p2, "query_sad_aac"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_5

    const/4 p2, 0x6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string/jumbo p2, "query_sad_dts"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_6

    const/4 p2, 0x7

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    const-string/jumbo p2, "query_sad_atrac"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_7

    const/16 p2, 0x8

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string/jumbo p2, "query_sad_onebitaudio"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_8

    const/16 p2, 0x9

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string/jumbo p2, "query_sad_ddp"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_9

    const/16 p2, 0xa

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    const-string/jumbo p2, "query_sad_dtshd"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_a

    const/16 p2, 0xb

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    const-string/jumbo p2, "query_sad_truehd"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_b

    const/16 p2, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string/jumbo p2, "query_sad_dst"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_c

    const/16 p2, 0xd

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const-string/jumbo p2, "query_sad_wmapro"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_d

    const/16 p2, 0xe

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    const-string/jumbo p2, "query_sad_max"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_e

    const/16 p0, 0xf

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method


# virtual methods
.method public final handleTimerEvent(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish$1()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_8

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mSource:I

    iget v5, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    if-eq v5, v2, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v2, 0xa3

    iget-object v5, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mParams:[B

    iget p1, p1, Lcom/android/server/hdmi/HdmiCecMessage;->mOpcode:I

    if-ne p1, v2, :cond_6

    if-eqz v5, :cond_5

    array-length p1, v5

    if-eqz p1, :cond_5

    array-length p1, v5

    rem-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_3

    :cond_1
    move p1, v3

    :goto_0
    array-length v2, v5

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_4

    aget-byte v2, v5, p1

    and-int/lit16 v6, v2, 0x80

    if-eqz v6, :cond_2

    goto :goto_1

    :cond_2
    and-int/lit8 v6, v2, 0x78

    shr-int/2addr v6, v1

    if-lez v6, :cond_3

    const/16 v7, 0xf

    if-gt v6, v7, :cond_3

    add-int/lit8 v6, p1, 0x1

    aget-byte v6, v5, v6

    add-int/lit8 v7, p1, 0x2

    aget-byte v7, v5, v7

    new-array v8, v1, [B

    aput-byte v2, v8, v3

    aput-byte v6, v8, v4

    aput-byte v7, v8, v0

    iget-object v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "Dropped invalid codec "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-byte v6, v5, p1

    const-string v7, "."

    const-string/jumbo v8, "RequestSadAction"

    invoke-static {v6, v7, v8, v2}, Lcom/android/server/UiModeManagerService$15$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :goto_2
    add-int/2addr p1, v1

    goto :goto_0

    :cond_4
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    iput v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    :cond_5
    :goto_3
    return v4

    :cond_6
    if-nez p1, :cond_8

    aget-byte p1, v5, v3

    and-int/lit16 p1, p1, 0xff

    const/16 v0, 0xa4

    if-ne p1, v0, :cond_8

    aget-byte p1, v5, v4

    and-int/lit16 p1, p1, 0xff

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish$1()V

    return v4

    :cond_7
    if-ne p1, v1, :cond_8

    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    iput v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    return v4

    :cond_8
    :goto_4
    return v3
.end method

.method public final querySad()V
    .locals 6

    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish$1()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    iget v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    const/4 v4, 0x4

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v1

    array-length v2, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v3, v2, [B

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, v0, v4

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xa4

    iget v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public final start()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    return-void
.end method

.method public final wrapUpAndFinish$1()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v2, v2, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput-object v1, v3, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSupportedSads:Ljava/util/List;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Ljava/util/List;Z)V

    iget-object v1, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v1, v1, Lcom/android/server/hdmi/HdmiLocalDevice;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->mSupportedSads:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->notifyArcStatusToAudioService(Ljava/util/List;Z)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method
