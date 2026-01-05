.class public Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mImei:Ljava/lang/String;

.field public final mMacAddress:Ljava/lang/String;

.field public final mMeid:Ljava/lang/String;

.field public final mSerialNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const-string/jumbo v3, "Unable to access telephony service"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    invoke-static {}, Landroid/os/Build;->getSerial()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string/jumbo v2, "android.hardware.wifi"

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    if-lez v0, :cond_1

    aget-object p1, p1, v1

    goto :goto_2

    :cond_1
    const-string p1, ""

    :goto_2
    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    return-void
.end method

.method public static getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "%"

    const-string/jumbo v1, "s"

    invoke-static {p0, v0, v1}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final calculateEnterpriseId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string/jumbo v2, "owner package must be specified."

    invoke-static {v0, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const-string/jumbo v0, "enterprise ID must either be null or non-empty."

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string v0, ""

    if-nez p2, :cond_2

    move-object p2, v0

    :cond_2
    iget-object v1, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mSerialNumber:Ljava/lang/String;

    if-nez v1, :cond_3

    move-object v1, v0

    :cond_3
    const/16 v2, 0x10

    invoke-static {v2, v1}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mImei:Ljava/lang/String;

    if-nez v3, :cond_4

    move-object v3, v0

    :cond_4
    invoke-static {v2, v3}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMeid:Ljava/lang/String;

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v4

    :goto_1
    invoke-static {v2, v0}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->mMacAddress:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length v4, v1

    array-length v5, v3

    add-int/2addr v4, v5

    array-length v5, v0

    add-int/2addr v4, v5

    array-length v5, p0

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/16 p0, 0x40

    invoke-static {p0, p1}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p0, p2}, Lcom/android/server/devicepolicy/EnterpriseSpecificIdCalculator;->getPaddedTruncatedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    array-length p2, p1

    array-length v0, p0

    add-int/2addr p2, v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string p2, "HMACSHA256"

    const/4 v0, 0x0

    invoke-static {p2, p0, v0, p1, v2}, Landroid/security/identity/Util;->computeHkdf(Ljava/lang/String;[B[B[BI)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    new-instance p1, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    new-instance p2, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
