.class public final enum Lcom/android/server/backup/restore/RestorePolicy;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/backup/restore/RestorePolicy;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/backup/restore/RestorePolicy;

.field public static final enum ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

.field public static final enum ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

.field public static final enum IGNORE:Lcom/android/server/backup/restore/RestorePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/backup/restore/RestorePolicy;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    new-instance v1, Lcom/android/server/backup/restore/RestorePolicy;

    const-string v2, "ACCEPT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    new-instance v2, Lcom/android/server/backup/restore/RestorePolicy;

    const-string v3, "ACCEPT_IF_APK"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/restore/RestorePolicy;->$VALUES:[Lcom/android/server/backup/restore/RestorePolicy;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/restore/RestorePolicy;
    .locals 1

    const-class v0, Lcom/android/server/backup/restore/RestorePolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/restore/RestorePolicy;

    return-object p0
.end method

.method public static values()[Lcom/android/server/backup/restore/RestorePolicy;
    .locals 1

    sget-object v0, Lcom/android/server/backup/restore/RestorePolicy;->$VALUES:[Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v0}, [Lcom/android/server/backup/restore/RestorePolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/backup/restore/RestorePolicy;

    return-object v0
.end method
