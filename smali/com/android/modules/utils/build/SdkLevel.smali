.class public final Lcom/android/modules/utils/build/SdkLevel;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAtLeastB()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static isAtLeastPreReleaseCodename(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string/jumbo v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public static isAtLeastR()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastS()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastSv2()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastT()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastU()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isAtLeastV()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
