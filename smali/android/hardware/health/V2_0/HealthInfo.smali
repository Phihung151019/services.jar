.class public final Landroid/hardware/health/V2_0/HealthInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public batteryCurrentAverage:I

.field public final diskStats:Ljava/util/ArrayList;

.field public final legacy:Landroid/hardware/health/V1_0/HealthInfo;

.field public final storageInfos:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/health/V1_0/HealthInfo;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    iput-boolean v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    iput v1, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2}, Ljava/lang/String;-><init>()V

    iput-object v2, v0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iput v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/health/V2_0/HealthInfo;

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    check-cast p1, Landroid/hardware/health/V2_0/HealthInfo;

    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    iget-object v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    iget v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    :cond_5
    iget-object p0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;)V
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    iget-object v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v10, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerAcOnline:Z

    const-wide/16 v2, 0x1

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerUsbOnline:Z

    const-wide/16 v2, 0x2

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->chargerWirelessOnline:Z

    const-wide/16 v2, 0x4

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    const-wide/16 v12, 0x8

    invoke-virtual {v9, v12, v13}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    const-wide/16 v2, 0xc

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryStatus:I

    const-wide/16 v14, 0x10

    invoke-virtual {v9, v14, v15}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryHealth:I

    const-wide/16 v2, 0x14

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v2

    iput-boolean v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryPresent:Z

    const-wide/16 v2, 0x18

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryLevel:I

    const-wide/16 v4, 0x1c

    invoke-virtual {v9, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v6

    iput v6, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    const-wide/16 v6, 0x20

    invoke-virtual {v9, v6, v7}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    iput v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    const-wide/16 v2, 0x24

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCurrent:I

    const-wide/16 v2, 0x28

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    iput v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryCycleCount:I

    const-wide/16 v2, 0x2c

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    iput v2, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryFullCharge:I

    const-wide/16 v2, 0x30

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    iput v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    move-wide/from16 v20, v6

    const-wide/16 v6, 0x38

    invoke-virtual {v9, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v1, Landroid/hardware/health/V1_0/HealthInfo;->batteryTechnology:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-long v2, v1

    move-wide/from16 v24, v4

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    move-object/from16 v1, p1

    const-wide/16 v16, 0x18

    const-wide/16 v18, 0x28

    const-wide/16 v22, 0x30

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v1, 0x48

    invoke-virtual {v9, v1, v2}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v3

    iput v3, v0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    const-wide/16 v3, 0x58

    invoke-virtual {v9, v3, v4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v5

    mul-int/lit8 v6, v5, 0x70

    int-to-long v6, v6

    move-wide/from16 v26, v3

    move v3, v5

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    move-wide/from16 v28, v1

    move v1, v3

    move-wide v2, v6

    const-wide/16 v6, 0x50

    move-wide/from16 v30, v12

    move v12, v1

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v2

    iget-object v3, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    const/4 v13, 0x0

    move v3, v13

    :goto_0
    if-ge v3, v12, :cond_0

    new-instance v4, Landroid/hardware/health/V2_0/DiskStats;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    new-instance v5, Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-direct {v5}, Landroid/hardware/health/V2_0/StorageAttribute;-><init>()V

    iput-object v5, v4, Landroid/hardware/health/V2_0/DiskStats;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    mul-int/lit8 v6, v3, 0x70

    int-to-long v6, v6

    invoke-virtual {v2, v6, v7}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->reads:J

    add-long v10, v6, v30

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->readMerges:J

    add-long v10, v6, v14

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->readSectors:J

    add-long v10, v6, v16

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->readTicks:J

    add-long v10, v6, v20

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writes:J

    add-long v10, v6, v18

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writeMerges:J

    add-long v10, v6, v22

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writeSectors:J

    const-wide/16 v10, 0x38

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->writeTicks:J

    const-wide/16 v10, 0x40

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->ioInFlight:J

    add-long v10, v6, v28

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->ioTicks:J

    const-wide/16 v10, 0x50

    add-long/2addr v10, v6

    invoke-virtual {v2, v10, v11}, Landroid/os/HwBlob;->getInt64(J)J

    move-result-wide v10

    iput-wide v10, v4, Landroid/hardware/health/V2_0/DiskStats;->ioInQueue:J

    add-long v6, v6, v26

    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/hardware/health/V2_0/StorageAttribute;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    iget-object v5, v0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    const-wide/16 v10, 0x0

    goto/16 :goto_0

    :cond_0
    const-wide/16 v2, 0x68

    invoke-virtual {v9, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v10

    mul-int/lit8 v2, v10, 0x30

    int-to-long v2, v2

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x1

    const-wide/16 v6, 0x60

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v9

    iget-object v2, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v11, v13

    :goto_1
    if-ge v11, v10, :cond_1

    new-instance v12, Landroid/hardware/health/V2_0/StorageInfo;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/hardware/health/V2_0/StorageAttribute;

    invoke-direct {v2}, Landroid/hardware/health/V2_0/StorageAttribute;-><init>()V

    iput-object v2, v12, Landroid/hardware/health/V2_0/StorageInfo;->attr:Landroid/hardware/health/V2_0/StorageAttribute;

    iput-short v13, v12, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    iput-short v13, v12, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    iput-short v13, v12, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    iput-object v3, v12, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    mul-int/lit8 v3, v11, 0x30

    int-to-long v3, v3

    invoke-virtual {v2, v1, v9, v3, v4}, Landroid/hardware/health/V2_0/StorageAttribute;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    add-long v5, v3, v16

    invoke-virtual {v9, v5, v6}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v12, Landroid/hardware/health/V2_0/StorageInfo;->eol:S

    const-wide/16 v5, 0x1a

    add-long/2addr v5, v3

    invoke-virtual {v9, v5, v6}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v12, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeA:S

    add-long v5, v3, v24

    invoke-virtual {v9, v5, v6}, Landroid/os/HwBlob;->getInt16(J)S

    move-result v2

    iput-short v2, v12, Landroid/hardware/health/V2_0/StorageInfo;->lifetimeB:S

    add-long v6, v3, v20

    invoke-virtual {v9, v6, v7}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v12, Landroid/hardware/health/V2_0/StorageInfo;->version:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-virtual {v9}, Landroid/os/HwBlob;->handle()J

    move-result-wide v4

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    iget-object v1, v0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{.legacy = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->legacy:Landroid/hardware/health/V1_0/HealthInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .batteryCurrentAverage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->batteryCurrentAverage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .diskStats = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/hardware/health/V2_0/HealthInfo;->diskStats:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .storageInfos = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/hardware/health/V2_0/HealthInfo;->storageInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
