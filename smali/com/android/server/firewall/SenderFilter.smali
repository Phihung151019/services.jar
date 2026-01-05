.class public abstract Lcom/android/server/firewall/SenderFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FACTORY:Lcom/android/server/firewall/SenderFilter$1;

.field public static final SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

.field public static final SYSTEM:Lcom/android/server/firewall/SenderFilter$2;

.field public static final SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

.field public static final USER_ID:Lcom/android/server/firewall/SenderFilter$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/firewall/SenderFilter$1;

    const-string/jumbo v1, "sender"

    invoke-direct {v0, v1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->FACTORY:Lcom/android/server/firewall/SenderFilter$1;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM:Lcom/android/server/firewall/SenderFilter$2;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->SYSTEM_OR_SIGNATURE:Lcom/android/server/firewall/SenderFilter$2;

    new-instance v0, Lcom/android/server/firewall/SenderFilter$2;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/firewall/SenderFilter$2;-><init>(I)V

    sput-object v0, Lcom/android/server/firewall/SenderFilter;->USER_ID:Lcom/android/server/firewall/SenderFilter$2;

    return-void
.end method

.method public static isPrivilegedApp(Landroid/content/pm/PackageManagerInternal;II)Z
    .locals 1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    check-cast p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService$PackageManagerInternalImpl;->mService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/pm/Computer;->isUidPrivileged(I)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
