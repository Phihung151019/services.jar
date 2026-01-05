.class Lcom/android/server/enterprise/kioskmode/KioskModeService$4;
.super Ljava/util/HashMap;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/kioskmode/KioskModeService;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/enterprise/kioskmode/KioskModeService$4;->this$0:Lcom/android/server/enterprise/kioskmode/KioskModeService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    const/4 v0, 0x3

    const/4 v1, 0x0

    const-string/jumbo v2, "false"

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v0, "systemBarEnabled"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    const/4 v0, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v3, "statusBarHidden"

    invoke-virtual {p0, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    const/4 v3, 0x2

    invoke-direct {p1, v3, v1, v2}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v2, "navigationBarHidden"

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    sget-object v2, Lcom/android/server/enterprise/kioskmode/KioskModeService;->ACTION_REFRESH_HWKEY_INTERNAL:Ljava/lang/String;

    const/4 v2, -0x1

    const-string/jumbo v3, "true"

    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v4, "multiWindowEnabled"

    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v4, "taskManagerEnabled"

    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v4, "kioskModeAirCommandAllowed"

    invoke-virtual {p0, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    invoke-direct {p1, v2, v0, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v0, "kioskModeAirViewAllowed"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;

    const/16 v0, 0x1f

    invoke-direct {p1, v0, v1, v3}, Lcom/android/server/enterprise/kioskmode/KioskModeService$PolicyDefinition;-><init>(IILjava/lang/String;)V

    const-string/jumbo v0, "edgeScreenBlockedFunctions"

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
