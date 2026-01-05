.class public final enum Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/chimera/PolicyHandler$ProtectLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public static final enum HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

.field public static final enum NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    const-string/jumbo v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    new-instance v1, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    const-string v2, "HEAVY"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    filled-new-array {v0, v1}, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    .locals 1

    const-class v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;
    .locals 1

    sget-object v0, Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    invoke-virtual {v0}, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/chimera/PolicyHandler$ProtectLevel;

    return-object v0
.end method
