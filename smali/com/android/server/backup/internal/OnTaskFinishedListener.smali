.class public interface abstract Lcom/android/server/backup/internal/OnTaskFinishedListener;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/backup/internal/OnTaskFinishedListener;->NOP:Lcom/android/server/backup/internal/OnTaskFinishedListener$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public abstract onFinished(Ljava/lang/String;)V
.end method
