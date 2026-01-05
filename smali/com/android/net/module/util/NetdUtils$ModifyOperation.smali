.class public final enum Lcom/android/net/module/util/NetdUtils$ModifyOperation;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/net/module/util/NetdUtils$ModifyOperation;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/net/module/util/NetdUtils$ModifyOperation;

.field public static final enum ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

.field public static final enum REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;


# direct methods
.method public static synthetic $values()[Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    .locals 2

    sget-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    sget-object v1, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    filled-new-array {v0, v1}, [Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->ADD:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    new-instance v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    const-string/jumbo v1, "REMOVE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->REMOVE:Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {}, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->$values()[Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    move-result-object v0

    sput-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->$VALUES:[Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    .locals 1

    const-class v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    return-object p0
.end method

.method public static values()[Lcom/android/net/module/util/NetdUtils$ModifyOperation;
    .locals 1

    sget-object v0, Lcom/android/net/module/util/NetdUtils$ModifyOperation;->$VALUES:[Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    invoke-virtual {v0}, [Lcom/android/net/module/util/NetdUtils$ModifyOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/net/module/util/NetdUtils$ModifyOperation;

    return-object v0
.end method
