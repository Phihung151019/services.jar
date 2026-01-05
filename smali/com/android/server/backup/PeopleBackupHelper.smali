.class public final Lcom/android/server/backup/PeopleBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/backup/PeopleBackupHelper;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-string/jumbo v0, "people_conversation_infos"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    const-string/jumbo v0, "people_conversation_infos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "Unexpected restore key "

    const-string/jumbo p2, "PeopleBackupHelper"

    invoke-static {p0, p1, p2}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/PeopleServiceInternal;

    iget p0, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    invoke-virtual {p1, p0, p2}, Lcom/android/server/people/PeopleServiceInternal;->restore(I[B)V

    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    const-string/jumbo v0, "people_conversation_infos"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo p0, "Unexpected backup key "

    const-string/jumbo v0, "PeopleBackupHelper"

    invoke-static {p0, p1, v0}, Lcom/android/server/HeimdAllFsService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    :cond_0
    const-class p1, Lcom/android/server/people/PeopleServiceInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/people/PeopleServiceInternal;

    iget p0, p0, Lcom/android/server/backup/PeopleBackupHelper;->mUserId:I

    invoke-virtual {p1, p0}, Lcom/android/server/people/PeopleServiceInternal;->getBackupPayload(I)[B

    move-result-object p0

    return-object p0
.end method
