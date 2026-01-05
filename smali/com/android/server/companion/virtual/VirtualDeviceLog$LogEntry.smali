.class public final Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDeviceId:I

.field public final mOwnerUid:I

.field public final mTimestamp:J

.field public final mType:I


# direct methods
.method public constructor <init>(IIIJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mType:I

    iput p2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mDeviceId:I

    iput-wide p4, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mTimestamp:J

    iput p3, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mOwnerUid:I

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/companion/virtual/VirtualDeviceLog;->DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    iget-wide v2, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mTimestamp:J

    invoke-static {v2, v3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mType:I

    if-nez v1, :cond_0

    const-string/jumbo v1, "START"

    goto :goto_0

    :cond_0
    const-string v1, "CLOSE"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Device ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mDeviceId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/companion/virtual/VirtualDeviceLog$LogEntry;->mOwnerUid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    :cond_1
    const/16 v1, 0x3e8

    if-ne p0, v1, :cond_2

    const-string/jumbo p0, "system"

    goto :goto_2

    :cond_2
    iget-object v1, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    aget-object v2, v1, v2

    array-length v1, v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_3

    const-string v1, ",..."

    invoke-static {v2, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    goto :goto_1

    :cond_4
    const-string v1, ""

    :goto_1
    iget-object p2, p2, Lcom/android/server/companion/virtual/VirtualDeviceLog$UidToPackageNameCache;->mUidToPackagesCache:Landroid/util/SparseArray;

    invoke-virtual {p2, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object p0, v1

    :goto_2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method
