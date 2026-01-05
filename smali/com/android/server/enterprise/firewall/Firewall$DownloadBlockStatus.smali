.class final enum Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

.field public static final enum BLOCKED_BY_BLACKLIST_RULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

.field public static final enum PASSED_BY_WHITELIST_RULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

.field public static final enum PASSED_NORULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    const-string/jumbo v1, "PASSED_NORULE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->PASSED_NORULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    new-instance v1, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    const-string/jumbo v2, "PASSED_BY_WHITELIST_RULE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->PASSED_BY_WHITELIST_RULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    new-instance v2, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    const-string v3, "BLOCKED_BY_BLACKLIST_RULE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->BLOCKED_BY_BLACKLIST_RULE:Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->$VALUES:[Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;
    .locals 1

    const-class v0, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;
    .locals 1

    sget-object v0, Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->$VALUES:[Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/firewall/Firewall$DownloadBlockStatus;

    return-object v0
.end method
