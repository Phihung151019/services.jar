.class public final Lcom/android/server/am/UidObserverController$UidObserverRegistration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final ORIG_ENUMS:[I

.field public static final PROTO_ENUMS:[I


# instance fields
.field public final mCanInteractAcrossUsers:Z

.field public final mCutpoint:I

.field public final mLastProcStates:Landroid/util/SparseIntArray;

.field public mMaxDispatchTime:I

.field public final mPkg:Ljava/lang/String;

.field public mSlowDispatchCount:I

.field public final mToken:Landroid/os/IBinder;

.field public final mUid:I

.field public mUids:[I

.field public final mWhich:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    return-void

    :array_0
    .array-data 4
        0x4
        0x8
        0x2
        0x1
        0x20
        0x40
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x2
        0x1
        0x6
        0x7
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;IIZ[ILandroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    iput p4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    iput-boolean p5, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCanInteractAcrossUsers:Z

    const/4 p1, 0x0

    if-eqz p6, :cond_0

    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [I

    iput-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUids:[I

    :goto_0
    iput-object p7, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mToken:Landroid/os/IBinder;

    if-ltz p4, :cond_1

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;Landroid/app/IUidObserver;)V
    .locals 2

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_1

    const-string v0, " ACT"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_2

    const-string v0, " GONE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    and-int/lit8 v0, p2, 0x20

    if-eqz v0, :cond_3

    const-string v0, " CAP"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_4

    const-string p2, " STATE"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " (cut="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object p2, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_5

    const-string v1, "      Last "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-static {p1, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 12

    const-wide v0, 0x20b00000017L

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10500000001L

    iget v4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mUid:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v4, 0x10900000002L

    iget-object v6, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mWhich:I

    int-to-long v8, v4

    sget-object v10, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->ORIG_ENUMS:[I

    sget-object v11, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->PROTO_ENUMS:[I

    const-wide v6, 0x20e00000003L

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JJ[I[I)V

    const-wide v6, 0x10500000004L

    iget p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mCutpoint:I

    invoke-virtual {v5, v6, v7, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object p1, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    const-wide v6, 0x20b00000005L

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v5, v2, v3, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v8, p0, Lcom/android/server/am/UidObserverController$UidObserverRegistration;->mLastProcStates:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    const-wide v9, 0x10500000002L

    invoke-virtual {v5, v9, v10, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
