.class public Lcom/android/server/media/projection/MediaProjectionTimestampStore;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static sInstance:Lcom/android/server/media/projection/MediaProjectionTimestampStore;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mInstantSource:Ljava/time/InstantSource;

.field public final mSharedPreferences:Landroid/content/SharedPreferences;

.field public final mTimestampLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;Ljava/time/InstantSource;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mTimestampLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mSharedPreferences:Landroid/content/SharedPreferences;

    iput-object p2, p0, Lcom/android/server/media/projection/MediaProjectionTimestampStore;->mInstantSource:Ljava/time/InstantSource;

    return-void
.end method
