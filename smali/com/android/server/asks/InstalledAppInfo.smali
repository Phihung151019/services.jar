.class public final Lcom/android/server/asks/InstalledAppInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public accessibility:Ljava/lang/String;

.field public execute:Ljava/lang/String;

.field public hasReqInstallPEM:Ljava/lang/String;

.field public initPkg:Ljava/lang/String;

.field public initType:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public overlay:Ljava/lang/String;

.field public requestInstallerZip:Ljava/lang/String;

.field public signature:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    const-string/jumbo v0, "allow"

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    const-string/jumbo v0, "block"

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    const-string/jumbo v1, "warning"

    iput-object v1, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    const-string/jumbo v0, "NA"

    iput-object v0, p0, Lcom/android/server/asks/InstalledAppInfo;->initPkg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/asks/InstalledAppInfo;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/asks/InstalledAppInfo;->signature:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/asks/InstalledAppInfo;->execute:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/asks/InstalledAppInfo;->overlay:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/asks/InstalledAppInfo;->requestInstallerZip:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/asks/InstalledAppInfo;->initType:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/asks/InstalledAppInfo;->accessibility:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/asks/InstalledAppInfo;->hasReqInstallPEM:Ljava/lang/String;

    return-void
.end method
