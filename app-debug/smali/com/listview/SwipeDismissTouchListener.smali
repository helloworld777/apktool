.class public Lcom/listview/SwipeDismissTouchListener;
.super Ljava/lang/Object;
.source "SwipeDismissTouchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;
    }
.end annotation


# instance fields
.field private mAnimationTime:J

.field private mCallbacks:Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;

.field private mDownX:F

.field private mDownY:F

.field private mMaxFlingVelocity:I

.field private mMinFlingVelocity:I

.field private mSlop:I

.field private mSwiping:Z

.field private mSwipingSlop:I

.field private mToken:Ljava/lang/Object;

.field private mTranslationX:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mView:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Object;Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "token"    # Ljava/lang/Object;
    .param p3, "callbacks"    # Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v1, 0x1

    iput v1, p0, Lcom/listview/SwipeDismissTouchListener;->mViewWidth:I

    .line 109
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 110
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/listview/SwipeDismissTouchListener;->mSlop:I

    .line 111
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/listview/SwipeDismissTouchListener;->mMinFlingVelocity:I

    .line 112
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/listview/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/listview/SwipeDismissTouchListener;->mAnimationTime:J

    .line 115
    iput-object p1, p0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    .line 116
    iput-object p2, p0, Lcom/listview/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    .line 117
    iput-object p3, p0, Lcom/listview/SwipeDismissTouchListener;->mCallbacks:Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/listview/SwipeDismissTouchListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/listview/SwipeDismissTouchListener;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/listview/SwipeDismissTouchListener;->performDismiss()V

    return-void
.end method

.method static synthetic access$100(Lcom/listview/SwipeDismissTouchListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/listview/SwipeDismissTouchListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/listview/SwipeDismissTouchListener;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/listview/SwipeDismissTouchListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/listview/SwipeDismissTouchListener;)Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/listview/SwipeDismissTouchListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/listview/SwipeDismissTouchListener;->mCallbacks:Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;

    return-object v0
.end method

.method private performDismiss()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 253
    iget-object v3, p0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 254
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 256
    .local v2, "originalHeight":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v2, v3, v4

    aput v5, v3, v5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    iget-wide v4, p0, Lcom/listview/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 258
    .local v0, "animator":Landroid/animation/ValueAnimator;
    new-instance v3, Lcom/listview/SwipeDismissTouchListener$2;

    invoke-direct {v3, p0, v1, v2}, Lcom/listview/SwipeDismissTouchListener$2;-><init>(Lcom/listview/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;I)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 270
    new-instance v3, Lcom/listview/SwipeDismissTouchListener$3;

    invoke-direct {v3, p0, v1}, Lcom/listview/SwipeDismissTouchListener$3;-><init>(Lcom/listview/SwipeDismissTouchListener;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 278
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 279
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 123
    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mTranslationX:F

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 125
    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mViewWidth:I

    const/4 v11, 0x2

    if-ge v10, v11, :cond_0

    .line 126
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mViewWidth:I

    .line 129
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 245
    :cond_1
    :goto_0
    const/4 v10, 0x0

    :goto_1
    return v10

    .line 132
    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mDownX:F

    .line 133
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mDownY:F

    .line 134
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mCallbacks:Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/listview/SwipeDismissTouchListener;->mToken:Ljava/lang/Object;

    invoke-interface {v10, v11}, Lcom/listview/SwipeDismissTouchListener$DismissCallbacks;->canDismiss(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 135
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 136
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 138
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 142
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/listview/SwipeDismissTouchListener;->mDownX:F

    sub-float v5, v10, v11

    .line 147
    .local v5, "deltaX":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 148
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v11, 0x3e8

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 149
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v9

    .line 150
    .local v9, "velocityX":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 151
    .local v2, "absVelocityX":F
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 152
    .local v3, "absVelocityY":F
    const/4 v7, 0x0

    .line 153
    .local v7, "dismiss":Z
    const/4 v8, 0x0

    .line 154
    .local v8, "dismissRight":Z
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/listview/SwipeDismissTouchListener;->mViewWidth:I

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_6

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_6

    .line 155
    const/4 v7, 0x1

    .line 156
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_5

    const/4 v8, 0x1

    .line 164
    :cond_3
    :goto_2
    if-eqz v7, :cond_c

    .line 166
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v11

    if-eqz v8, :cond_b

    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v10, v10

    :goto_3
    invoke-virtual {v11, v10}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/listview/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    new-instance v11, Lcom/listview/SwipeDismissTouchListener$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lcom/listview/SwipeDismissTouchListener$1;-><init>(Lcom/listview/SwipeDismissTouchListener;)V

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 184
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 185
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 186
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mTranslationX:F

    .line 187
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mDownX:F

    .line 188
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mDownY:F

    .line 189
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 156
    :cond_5
    const/4 v8, 0x0

    goto :goto_2

    .line 157
    :cond_6
    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mMinFlingVelocity:I

    int-to-float v10, v10

    cmpg-float v10, v10, v2

    if-gtz v10, :cond_3

    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mMaxFlingVelocity:I

    int-to-float v10, v10

    cmpg-float v10, v2, v10

    if-gtz v10, :cond_3

    cmpg-float v10, v3, v2

    if-gez v10, :cond_3

    cmpg-float v10, v3, v2

    if-gez v10, :cond_3

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_3

    .line 161
    const/4 v10, 0x0

    cmpg-float v10, v9, v10

    if-gez v10, :cond_7

    const/4 v10, 0x1

    move v11, v10

    :goto_5
    const/4 v10, 0x0

    cmpg-float v10, v5, v10

    if-gez v10, :cond_8

    const/4 v10, 0x1

    :goto_6
    if-ne v11, v10, :cond_9

    const/4 v7, 0x1

    .line 162
    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v10

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-lez v10, :cond_a

    const/4 v8, 0x1

    :goto_8
    goto/16 :goto_2

    .line 161
    :cond_7
    const/4 v10, 0x0

    move v11, v10

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    const/4 v7, 0x0

    goto :goto_7

    .line 162
    :cond_a
    const/4 v8, 0x0

    goto :goto_8

    .line 166
    :cond_b
    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mViewWidth:I

    neg-int v10, v10

    int-to-float v10, v10

    goto/16 :goto_3

    .line 176
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_4

    .line 178
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/listview/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_4

    .line 194
    .end local v2    # "absVelocityX":F
    .end local v3    # "absVelocityY":F
    .end local v5    # "deltaX":F
    .end local v7    # "dismiss":Z
    .end local v8    # "dismissRight":Z
    .end local v9    # "velocityX":F
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 198
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/listview/SwipeDismissTouchListener;->mAnimationTime:J

    invoke-virtual {v10, v12, v13}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 203
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 204
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 205
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mTranslationX:F

    .line 206
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mDownX:F

    .line 207
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mDownY:F

    .line 208
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwiping:Z

    goto/16 :goto_0

    .line 213
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v10, :cond_1

    .line 217
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/listview/SwipeDismissTouchListener;->mDownX:F

    sub-float v5, v10, v11

    .line 219
    .restart local v5    # "deltaX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/listview/SwipeDismissTouchListener;->mDownY:F

    sub-float v6, v10, v11

    .line 220
    .local v6, "deltaY":F
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    move-object/from16 v0, p0

    iget v11, v0, Lcom/listview/SwipeDismissTouchListener;->mSlop:I

    int-to-float v11, v11

    cmpl-float v10, v10, v11

    if-lez v10, :cond_d

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v10

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_d

    .line 221
    const/4 v10, 0x1

    move-object/from16 v0, p0

    iput-boolean v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwiping:Z

    .line 222
    const/4 v10, 0x0

    cmpl-float v10, v5, v10

    if-lez v10, :cond_e

    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSlop:I

    :goto_9
    move-object/from16 v0, p0

    iput v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwipingSlop:I

    .line 223
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {v10, v11}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 226
    invoke-static/range {p2 .. p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    .line 227
    .local v4, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v10

    shl-int/lit8 v10, v10, 0x8

    or-int/lit8 v10, v10, 0x3

    invoke-virtual {v4, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 230
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 231
    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    .line 234
    .end local v4    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSwiping:Z

    if-eqz v10, :cond_1

    .line 235
    move-object/from16 v0, p0

    iput v5, v0, Lcom/listview/SwipeDismissTouchListener;->mTranslationX:F

    .line 236
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/listview/SwipeDismissTouchListener;->mSwipingSlop:I

    int-to-float v11, v11

    sub-float v11, v5, v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setTranslationX(F)V

    .line 238
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/listview/SwipeDismissTouchListener;->mView:Landroid/view/View;

    const/4 v11, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v15

    mul-float/2addr v14, v15

    move-object/from16 v0, p0

    iget v15, v0, Lcom/listview/SwipeDismissTouchListener;->mViewWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    sub-float/2addr v13, v14

    invoke-static {v12, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    invoke-virtual {v10, v11}, Landroid/view/View;->setAlpha(F)V

    .line 240
    const/4 v10, 0x1

    goto/16 :goto_1

    .line 222
    :cond_e
    move-object/from16 v0, p0

    iget v10, v0, Lcom/listview/SwipeDismissTouchListener;->mSlop:I

    neg-int v10, v10

    goto :goto_9

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
