.class public final Landroid/hardware/health/HealthInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/health/HealthInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public batteryCapacityLevel:I

.field public batteryChargeCounterUah:I

.field public batteryChargeTimeToFullNowSeconds:J

.field public batteryCurrentAverageMicroamps:I

.field public batteryCurrentMicroamps:I

.field public batteryCycleCount:I

.field public batteryFullChargeDesignCapacityUah:I

.field public batteryFullChargeUah:I

.field public batteryHealth:I

.field public batteryHealthData:Landroid/hardware/health/BatteryHealthData;

.field public batteryLevel:I

.field public batteryPresent:Z

.field public batteryStatus:I

.field public batteryTechnology:Ljava/lang/String;

.field public batteryTemperatureTenthsCelsius:I

.field public batteryVoltageMillivolts:I

.field public chargerAcOnline:Z

.field public chargerDockOnline:Z

.field public chargerUsbOnline:Z

.field public chargerWirelessOnline:Z

.field public chargingPolicy:I

.field public chargingState:I

.field public diskStats:[Landroid/hardware/health/DiskStats;

.field public hingeInfos:[Landroid/hardware/health/HingeInfo;

.field public maxChargingCurrentMicroamps:I

.field public maxChargingVoltageMicrovolts:I

.field public storageInfos:[Landroid/hardware/health/StorageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/health/HealthInfo$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/health/HealthInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    return-void
.end method

.method public static describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    check-cast p0, [Ljava/lang/Object;

    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p0, v0

    invoke-static {v3}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    instance-of v1, p0, Landroid/os/Parcelable;

    if-eqz v1, :cond_3

    check-cast p0, Landroid/os/Parcelable;

    invoke-interface {p0}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final describeContents()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    invoke-static {v0}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    invoke-static {v1}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->batteryHealthData:Landroid/hardware/health/BatteryHealthData;

    invoke-static {v1}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->hingeInfos:[Landroid/hardware/health/HingeInfo;

    invoke-static {p0}, Landroid/hardware/health/HealthInfo;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->chargerDockOnline:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v1, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->diskStats:[Landroid/hardware/health/DiskStats;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->storageInfos:[Landroid/hardware/health/StorageInfo;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v1, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->chargingState:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget v1, p0, Landroid/hardware/health/HealthInfo;->chargingPolicy:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Landroid/hardware/health/HealthInfo;->batteryHealthData:Landroid/hardware/health/BatteryHealthData;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object p0, p0, Landroid/hardware/health/HealthInfo;->hingeInfos:[Landroid/hardware/health/HingeInfo;

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    sub-int p2, p0, v0

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    return-void
.end method
