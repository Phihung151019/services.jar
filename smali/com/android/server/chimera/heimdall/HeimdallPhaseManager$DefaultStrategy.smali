.class public final Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sBgTrimPackages:[Ljava/lang/String;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

.field public final synthetic this$0$1:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "com.sec.android.app.launcher"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->sBgTrimPackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;I)V
    .locals 0

    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager$DefaultStrategy;->this$0$1:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    return-void
.end method

.method private final sendBgTrimIfAppNeed$com$android$server$chimera$heimdall$HeimdallPhaseManager$DefaultStrategy(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 0

    return-void
.end method
