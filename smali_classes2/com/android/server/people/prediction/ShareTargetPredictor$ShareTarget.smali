.class Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAppTarget:Landroid/app/prediction/AppTarget;

.field public final mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

.field public final mEventHistory:Lcom/android/server/people/data/EventHistory;

.field public mScore:F


# direct methods
.method public constructor <init>(Landroid/app/prediction/AppTarget;Lcom/android/server/people/data/EventHistory;Lcom/android/server/people/data/ConversationInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    iput-object p2, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    iput-object p3, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method


# virtual methods
.method public getAppTarget()Landroid/app/prediction/AppTarget;
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mAppTarget:Landroid/app/prediction/AppTarget;

    return-object p0
.end method

.method public getConversationInfo()Lcom/android/server/people/data/ConversationInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mConversationInfo:Lcom/android/server/people/data/ConversationInfo;

    return-object p0
.end method

.method public getEventHistory()Lcom/android/server/people/data/EventHistory;
    .locals 0

    iget-object p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mEventHistory:Lcom/android/server/people/data/EventHistory;

    return-object p0
.end method

.method public getScore()F
    .locals 0

    iget p0, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return p0
.end method

.method public setScore(F)V
    .locals 0

    iput p1, p0, Lcom/android/server/people/prediction/ShareTargetPredictor$ShareTarget;->mScore:F

    return-void
.end method
