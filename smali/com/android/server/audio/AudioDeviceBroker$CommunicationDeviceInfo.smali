.class public final Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAttributionSource:Landroid/content/AttributionSource;

.field public final mCb:Landroid/os/IBinder;

.field public final mDevice:Landroid/media/AudioDeviceAttributes;

.field public final mEventSource:Ljava/lang/String;

.field public final mIsPrivileged:Z

.field public final mOn:Z

.field public final mScoAudioMode:I


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/AttributionSource;Landroid/media/AudioDeviceAttributes;ZILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    iput-object p2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    iput-object p3, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    iput-boolean p4, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    iput p5, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    iput-boolean p7, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    iput-object p6, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    if-nez v2, :cond_2

    return v0

    :cond_2
    iget-object v2, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    check-cast p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;

    iget-object v3, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    iget-object p1, p1, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {p0, p1}, Landroid/content/AttributionSource;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    invoke-interface {v0}, Landroid/os/IBinder;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CommunicationDeviceInfo mCb="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mCb:Landroid/os/IBinder;

    invoke-interface {v1}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAttributionSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mAttributionSource:Landroid/content/AttributionSource;

    invoke-virtual {v1}, Landroid/content/AttributionSource;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mDevice=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mDevice:Landroid/media/AudioDeviceAttributes;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/AudioDeviceAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "] mOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mScoAudioMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mScoAudioMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mIsPrivileged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mIsPrivileged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mEventSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/audio/AudioDeviceBroker$CommunicationDeviceInfo;->mEventSource:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
