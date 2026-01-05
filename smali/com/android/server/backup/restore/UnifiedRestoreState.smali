.class public final enum Lcom/android/server/backup/restore/UnifiedRestoreState;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/backup/restore/UnifiedRestoreState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

.field public static final enum RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const-string v1, "INITIAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->INITIAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    new-instance v1, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const-string/jumbo v2, "RUNNING_QUEUE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/backup/restore/UnifiedRestoreState;->RUNNING_QUEUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    new-instance v2, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const-string/jumbo v3, "RESTORE_KEYVALUE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_KEYVALUE:Lcom/android/server/backup/restore/UnifiedRestoreState;

    new-instance v3, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const-string/jumbo v4, "RESTORE_FULL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FULL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    new-instance v4, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const-string/jumbo v5, "RESTORE_FINISHED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/server/backup/restore/UnifiedRestoreState;->RESTORE_FINISHED:Lcom/android/server/backup/restore/UnifiedRestoreState;

    new-instance v5, Lcom/android/server/backup/restore/UnifiedRestoreState;

    const-string v6, "FINAL"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/android/server/backup/restore/UnifiedRestoreState;->FINAL:Lcom/android/server/backup/restore/UnifiedRestoreState;

    filled-new-array/range {v0 .. v5}, [Lcom/android/server/backup/restore/UnifiedRestoreState;

    move-result-object v0

    sput-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 1

    const-class v0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/backup/restore/UnifiedRestoreState;
    .locals 1

    sget-object v0, Lcom/android/server/backup/restore/UnifiedRestoreState;->$VALUES:[Lcom/android/server/backup/restore/UnifiedRestoreState;

    invoke-virtual {v0}, [Lcom/android/server/backup/restore/UnifiedRestoreState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/backup/restore/UnifiedRestoreState;

    return-object v0
.end method
