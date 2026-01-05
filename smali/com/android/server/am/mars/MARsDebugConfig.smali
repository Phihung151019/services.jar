.class public abstract Lcom/android/server/am/mars/MARsDebugConfig;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static DEBUG_DATABASE:Z

.field public static DEBUG_FILTER:Z

.field public static DEBUG_FREECESS:Z

.field public static final DEBUG_HIGH:Z

.field public static DEBUG_MARs:Z

.field public static final DEBUG_MID:Z

.field public static DEBUG_NETLINK:Z

.field public static DEBUG_OLAF:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0x494d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MID:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0x4948"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_HIGH:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_MARs:Z

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_OLAF:Z

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FREECESS:Z

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_DATABASE:Z

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_FILTER:Z

    sput-boolean v0, Lcom/android/server/am/mars/MARsDebugConfig;->DEBUG_NETLINK:Z

    return-void
.end method
