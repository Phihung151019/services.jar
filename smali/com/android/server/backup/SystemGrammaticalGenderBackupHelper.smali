.class public final Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;
.super Landroid/app/backup/BlobBackupHelper;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const-string/jumbo v0, "system_gender"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Landroid/app/backup/BlobBackupHelper;-><init>(I[Ljava/lang/String;)V

    iput p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mUserId:I

    const-class p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    iput-object p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    return-void
.end method


# virtual methods
.method public final applyRestoredPayload(Ljava/lang/String;[B)V
    .locals 1

    const-string/jumbo v0, "system_gender"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mUserId:I

    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p2

    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->setSystemWideGrammaticalGender(II)V

    :cond_0
    return-void
.end method

.method public final getBackupPayload(Ljava/lang/String;)[B
    .locals 1

    const-string/jumbo v0, "system_gender"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mGrammarInflectionManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/android/server/backup/SystemGrammaticalGenderBackupHelper;->mUserId:I

    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService$GrammaticalInflectionManagerInternalImpl;->this$0:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-static {p1}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->-$$Nest$menforceCallerPermissions(Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;)V

    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->mBackupHelper:Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;

    iget-object p1, p1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionBackupHelper;->mGrammaticalGenderService:Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {p1, p0}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;->getSystemGrammaticalGender(I)I

    move-result p0

    const/4 p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-virtual {p2}, Landroid/app/backup/BackupDataOutput;->getTransportFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BlobBackupHelper;->performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method
