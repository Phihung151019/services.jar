.class public abstract Lcom/android/server/biometrics/sensors/face/SemFaceUtils;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mBundle:Landroid/os/Bundle;

.field public static mFidoRequestData:[B

.field public static mFidoResultData:[B

.field public static mNeedtoAuthenticateExt:Z

.field public static mSurface:Landroid/view/Surface;


# direct methods
.method public static copyOptions(ILandroid/hardware/face/FaceAuthenticateOptions;)Landroid/hardware/face/FaceAuthenticateOptions;
    .locals 1

    new-instance v0, Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    invoke-direct {v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;-><init>()V

    invoke-virtual {v0, p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getSensorId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setSensorId(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setOpPackageName(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setAttributionTag(Ljava/lang/String;)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p1}, Landroid/hardware/face/FaceAuthenticateOptions;->getDisplayState()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->setDisplayState(I)Landroid/hardware/face/FaceAuthenticateOptions$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/face/FaceAuthenticateOptions$Builder;->build()Landroid/hardware/face/FaceAuthenticateOptions;

    move-result-object p0

    return-object p0
.end method

.method public static getFidoRequestDataAsArrayList()Ljava/util/ArrayList;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/biometrics/sensors/face/SemFaceUtils;->mFidoRequestData:[B

    return-object v0
.end method

.method public static getSecurityMode(Landroid/content/Context;)I
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_open_eyes"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v4, "face_recognize_mask"

    invoke-static {p0, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne v1, p0, :cond_1

    invoke-static {}, Landroid/hardware/face/FaceManager;->semIsSupportOnMask()Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x10

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mode=0x"

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "SemFace"

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
