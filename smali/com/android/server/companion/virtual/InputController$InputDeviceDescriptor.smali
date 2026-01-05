.class final Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field public final mCreationOrderNumber:J

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mDisplayId:I

.field public final mInputDeviceId:I

.field public final mName:Ljava/lang/String;

.field public final mPhys:Ljava/lang/String;

.field public final mPtr:J

.field public final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(JLandroid/os/IBinder$DeathRecipient;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPtr:J

    iput-object p3, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    iput p4, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mType:I

    iput p5, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mDisplayId:I

    iput-object p6, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mPhys:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mName:Ljava/lang/String;

    iput p8, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mInputDeviceId:I

    sget-object p1, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->sNextCreationOrderNumber:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/companion/virtual/InputController$InputDeviceDescriptor;->mCreationOrderNumber:J

    return-void
.end method
