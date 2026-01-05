.class public final Lcom/android/server/blob/BlobStoreManagerService$Stub;
.super Landroid/app/blob/IBlobStoreManager$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Landroid/app/blob/IBlobStoreManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final abandonSession(JLjava/lang/String;)V
    .locals 3

    long-to-float v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(ILjava/lang/String;J)Lcom/android/server/blob/BlobStoreSession;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->open()V

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->abandon()V

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobSessionsAsync()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    .locals 8

    const-string/jumbo v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Description must be valid; descriptionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string/jumbo v0, "leaseExpiryTimeMillis must not be negative"

    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    move-object v3, p3

    goto :goto_3

    :cond_2
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    invoke-static {p3, v0}, Landroid/text/TextUtils;->trimToLengthWithEllipsis(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object p3

    goto :goto_2

    :goto_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iget-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v6, p3, p6}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v6, p3, p6}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    move-object v1, p1

    move v2, p2

    move-wide v4, p4

    move-object v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$macquireLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception v0

    move-object p0, v0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    move-object v7, p6

    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to open blob; callingUid="

    const-string p2, ", callingPackage="

    invoke-static {v6, p1, p2, v7}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J
    .locals 2

    const-string/jumbo v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mcreateSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Landroid/os/LimitExceededException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to create session; callingUid="

    const-string v1, ", callingPackage="

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final deleteBlob(J)V
    .locals 3

    const-string/jumbo v0, "deleteBlob"

    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$Stub;->verifyCallerIsSystemUid(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/blob/BlobStoreManagerService;J)V

    invoke-interface {v1, v2}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object p1, p1, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    const-string v0, "BlobStore"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_c

    :cond_0
    new-instance p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    invoke-direct {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;-><init>()V

    const/4 v0, 0x1

    if-nez p3, :cond_1

    goto/16 :goto_7

    :cond_1
    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_14

    aget-object v2, p3, v1

    const-string v3, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v3, "--unredacted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v3, "--sessions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/2addr v2, v0

    iput v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    goto/16 :goto_6

    :cond_4
    const-string v3, "--blobs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    goto/16 :goto_6

    :cond_5
    const-string v3, "--config"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    goto/16 :goto_6

    :cond_6
    const-string v3, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "-p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto/16 :goto_3

    :cond_7
    const-string v3, "--uid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "uid"

    invoke-static {v3, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    :cond_8
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v3, "userId"

    invoke-static {v3, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired(Ljava/lang/String;I[Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const-string v3, "--blob"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "-b"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_2

    :cond_a
    const-string v3, "--help"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_1

    :cond_b
    iget-object v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired(I[Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_c
    :goto_1
    iput-boolean v0, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    goto :goto_6

    :cond_d
    :goto_2
    iget-object v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired(I[Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_e
    :goto_3
    iget-object v2, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    array-length v3, p3

    if-ge v1, v3, :cond_f

    aget-object v3, p3, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "Missing packageName"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x7d0

    if-eq v2, v3, :cond_11

    if-nez v2, :cond_13

    :cond_11
    iput-boolean v0, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    goto :goto_6

    :cond_12
    :goto_5
    iput-boolean v0, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    :cond_13
    :goto_6
    add-int/2addr v1, v0

    goto/16 :goto_0

    :cond_14
    :goto_7
    new-instance p3, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {p3, p2, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-boolean v1, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    if-eqz v1, :cond_15

    const-string/jumbo p0, "dumpsys blob_store [options]:"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p0, "--help | -h"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump this help text"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--sessions"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump only the sessions info"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--blobs"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump only the committed blobs info"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--config"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump only the config values"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--package | -p [package-name]"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump blobs info associated with the given package"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--uid | -u [uid]"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump blobs info associated with the given uid"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--user [user-id]"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump blobs info in the given user"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--blob | -b [session-id | blob-id]"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump blob info corresponding to the given ID"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    const-string p0, "--full | -f"

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Dump full unredacted blobs data"

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Landroid/util/IndentingPrintWriter;Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    :cond_15
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object p2, p2, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCurrentMaxSessionId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-wide v2, v2, Lcom/android/server/blob/BlobStoreManagerService;->mCurrentMaxSessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    goto :goto_8

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :cond_16
    :goto_8
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_9

    :cond_17
    iget v1, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    :goto_9
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, p3, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mdumpSessionsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_18
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_a

    :cond_19
    iget v0, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1a

    :goto_a
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, p3, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mdumpBlobsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1a
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result p2

    if-eqz p2, :cond_1b

    goto :goto_b

    :cond_1b
    iget p1, p1, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 p1, p1, 0x4

    if-eqz p1, :cond_1c

    :goto_b
    const-string p1, "BlobStore config:"

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "XML current version: 6"

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Idle job ID: 191934935"

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "Total bytes per app limit: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v0

    long-to-float p2, v0

    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    mul-float/2addr p2, v0

    float-to-long v0, p2

    sget-wide v2, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const/16 p2, 0x8

    invoke-static {p0, v0, v1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "Device config properties:"

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "idle_job_period_ms: [cur: "

    const-string v2, ", def: "

    const-string/jumbo v3, "]"

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "session_expiry_timeout_ms: [cur: "

    invoke-static {v1, p1, v2, v0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    invoke-static {p0, v0, v1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    invoke-static {p0, v0, v1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "total_bytes_per_app_limit_floor: [cur: "

    invoke-static {p2, p1, v2, p0, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "total_bytes_per_app_limit_fraction: [cur: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", def: 0.01]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    sget-wide p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "lease_acquisition_wait_time_ms: [cur: "

    invoke-static {p2, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    sget-wide p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "commit_cool_off_duration_ms: [cur: "

    invoke-static {p2, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "use_revocable_fd_for_reads: [cur: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    invoke-static {p0, p1}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p0

    sget-wide p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    invoke-static {p1, p2}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "delete_on_last_lease_delay_ms: [cur: "

    invoke-static {p2, p0, v2, p1, v3}, Lcom/android/internal/util/jobs/XmlUtils$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    const-string/jumbo p1, "max_active_sessions: [cur: "

    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    const-string/jumbo p1, "max_committed_blobs: [cur: "

    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    const-string/jumbo p1, "max_leased_blobs: [cur: "

    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    const-string/jumbo p1, "max_permitted_pks: [cur: "

    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    sget p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    const-string/jumbo p1, "lease_desc_char_limit: [cur: "

    invoke-static {p0, p1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget p1, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1c
    :goto_c
    return-void

    :goto_d
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;
    .locals 4

    const-string/jumbo v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    const-string v1, "Caller not allowed to access "

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata;

    if-eqz p0, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/blob/BlobMetadata;->getLeaseInfo(ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object p0

    monitor-exit v2

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; callingUid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to open blob; callingUid="

    const-string v1, ", callingPackage="

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0, p1, v1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda0;-><init>(ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/server/blob/BlobStoreManagerService;->forEachBlobLocked(Ljava/util/function/Consumer;)V

    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getRemainingLeaseQuotaBytes(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->getRemainingLeaseQuotaBytesInternal(ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public final handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public final openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 2

    const-string/jumbo v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mopenBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to open blob; callingUid="

    const-string v1, ", callingPackage="

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;
    .locals 3

    long-to-float v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->openSessionInternal(ILjava/lang/String;J)Lcom/android/server/blob/BlobStoreSession;

    move-result-object p0

    return-object p0
.end method

.method public final queryBlobsForUser(I)Ljava/util/List;
    .locals 6

    const-string/jumbo v0, "queryBlobsForUser"

    invoke-virtual {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService$Stub;->verifyCallerIsSystemUid(Ljava/lang/String;)V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    :cond_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/ArrayMap;I)V

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v2, p1, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;-><init>(ILcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda13;Ljava/util/ArrayList;)V

    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    iget-object v4, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/blob/BlobHandle;

    iget-object v5, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata;

    invoke-virtual {v2, v4, v5}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda14;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final releaseAllLeases(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda8;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v1, "Caller not allowed to open blob; callingUid="

    const-string v2, ", callingPackage="

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v0, "blobHandle must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, v1, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(ILcom/android/server/blob/BlobStoreManagerService;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    const-string v1, "Caller not allowed to access "

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreManagerService;->mBlobsMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0, p2}, Lcom/android/server/blob/BlobMetadata;->isAccessAllowedForCaller(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0, p2}, Lcom/android/server/blob/BlobMetadata;->removeLeasee(ILjava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, v3}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;Lcom/android/server/blob/BlobMetadata;)V

    sget-wide v3, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    invoke-virtual {p2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService;->writeBlobsInfoAsync()V

    monitor-exit v2

    return-void

    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; callingUid="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Caller not allowed to open blob; callingUid="

    const-string v1, ", callingPackage="

    invoke-static {v0, p1, v1, p2}, Lcom/android/server/accessibility/AccessibilityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final verifyCallerIsSystemUid(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo v0, "Only admin user\'s app with system uidare allowed to call #"

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final waitForIdle(Landroid/os/RemoteCallback;)V
    .locals 3

    const-string/jumbo v0, "remoteCallback must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Caller is not allowed to call this; caller="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    iget-object v0, v0, Lcom/android/server/blob/BlobStoreManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$$ExternalSyntheticLambda17;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
