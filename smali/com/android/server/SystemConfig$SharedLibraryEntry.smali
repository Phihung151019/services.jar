.class public final Lcom/android/server/SystemConfig$SharedLibraryEntry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final canBeSafelyIgnored:Z

.field public final dependencies:[Ljava/lang/String;

.field public final filename:Ljava/lang/String;

.field public final isNative:Z

.field public final name:Ljava/lang/String;

.field public final onBootclasspathBefore:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->filename:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->dependencies:[Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->onBootclasspathBefore:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->isNative:Z

    const/4 p1, 0x0

    if-eqz p4, :cond_0

    sget-object p2, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    :try_start_0
    invoke-static {p4}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move p2, p1

    :goto_0
    if-nez p2, :cond_1

    :cond_0
    if-eqz p5, :cond_2

    sget-object p2, Lcom/android/server/SystemConfig;->sInstance:Lcom/android/server/SystemConfig;

    :try_start_1
    invoke-static {p5}, Lcom/android/modules/utils/build/UnboundedSdkLevel;->isAtLeast(Ljava/lang/String;)Z

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move p2, p1

    :goto_1
    if-nez p2, :cond_2

    :cond_1
    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/SystemConfig$SharedLibraryEntry;->canBeSafelyIgnored:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 7

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/SystemConfig$SharedLibraryEntry;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
