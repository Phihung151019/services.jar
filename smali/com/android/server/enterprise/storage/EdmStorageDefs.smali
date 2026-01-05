.class public abstract Lcom/android/server/enterprise/storage/EdmStorageDefs;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

.field public static final FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

.field public static final sAppPackageNameControlMasks:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageDefs$1;

    invoke-direct {v0}, Lcom/android/server/enterprise/storage/EdmStorageDefs$1;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->sAppPackageNameControlMasks:Ljava/util/Map;

    const-string/jumbo v15, "targetPortNumber"

    const-string/jumbo v16, "status"

    const-string/jumbo v1, "id"

    const-string/jumbo v2, "adminUid"

    const-string/jumbo v3, "ipAddress"

    const-string/jumbo v4, "portNumber"

    const-string/jumbo v5, "portLocation"

    const-string/jumbo v6, "packageName"

    const-string/jumbo v7, "signature"

    const-string/jumbo v8, "networkInterface"

    const-string/jumbo v9, "networkInterfaceStr"

    const-string/jumbo v10, "direction"

    const-string/jumbo v11, "protocol"

    const-string/jumbo v12, "addressType"

    const-string/jumbo v13, "targetIpAddress"

    const-string/jumbo v14, "ruleType"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_RULE_COLUMNS:[Ljava/lang/String;

    const-string/jumbo v0, "adminUid"

    const-string/jumbo v1, "userID"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/storage/EdmStorageDefs;->FIREWALL_POLICY_STATUS_COLUMNS:[Ljava/lang/String;

    return-void
.end method
