.class public final Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

.field public final key:Ljava/lang/String;

.field public final licenseKey:Ljava/lang/String;

.field public final recordMap:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/license/EnterpriseLicenseService;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/knox/license/ILicenseResultCallback;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iput-object p2, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->licenseKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->callback:Lcom/samsung/android/knox/license/ILicenseResultCallback;

    iput-object p5, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->recordMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "binderDied() key = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EnterpriseLicenseService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->this$0:Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    iget-object v1, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/enterprise/license/EnterpriseLicenseService$LicenseResultRecord;->recordMap:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->unregisterLicenseResultRecord(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
