.class public Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;
.super Landroid/widget/ListView;
.source "SwipeMenuListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;,
        Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;
    }
.end annotation


# static fields
.field private static final TOUCH_STATE_NONE:I = 0x0

.field private static final TOUCH_STATE_X:I = 0x1

.field private static final TOUCH_STATE_Y:I = 0x2


# instance fields
.field private MAX_X:I

.field private MAX_Y:I

.field private mCloseInterpolator:Landroid/view/animation/Interpolator;

.field private mDownX:F

.field private mDownY:F

.field private mMenuCreator:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;

.field private mOnMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

.field private mOnSwipeListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;

.field private mOpenInterpolator:Landroid/view/animation/Interpolator;

.field private mTouchPosition:I

.field private mTouchState:I

.field private mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 41
    invoke-direct {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 51
    invoke-direct {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    const/4 v0, 0x5

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    .line 26
    const/4 v0, 0x3

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 46
    invoke-direct {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;
    .locals 1
    .param p0, "x0"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mMenuCreator:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;)Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;
    .locals 1
    .param p0, "x0"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    return-object v0
.end method

.method private dp2px(I)I
    .locals 3
    .param p1, "dp"    # I

    .prologue
    .line 206
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private init()V
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_X:I

    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_X:I

    .line 56
    iget v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    invoke-direct {p0, v0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->dp2px(I)I

    move-result v0

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    .line 58
    return-void
.end method


# virtual methods
.method public getCloseInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getOpenInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v6, 0x1

    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-nez v7, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    .line 187
    :goto_0
    return v6

    .line 110
    :cond_0
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 111
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 112
    packed-switch v0, :pswitch_data_0

    .line 187
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 114
    :pswitch_0
    iget v4, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 115
    .local v4, "oldPos":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iput v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mDownX:F

    .line 116
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iput v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mDownY:F

    .line 117
    iput v9, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    .line 119
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual {p0, v7, v8}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->pointToPosition(II)I

    move-result v7

    iput v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 121
    iget v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    if-ne v7, v4, :cond_2

    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v7}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 123
    iput v6, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    .line 124
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v7, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 128
    :cond_2
    iget v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 130
    .local v5, "view":Landroid/view/View;
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v7}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 131
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v7}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    .line 132
    iput-object v11, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .line 135
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 136
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {v1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 137
    invoke-virtual {p0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 140
    .end local v1    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_3
    instance-of v6, v5, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v6, :cond_4

    .line 141
    check-cast v5, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .end local v5    # "view":Landroid/view/View;
    iput-object v5, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .line 143
    :cond_4
    iget-object v6, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v6, :cond_1

    .line 144
    iget-object v6, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v6, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 148
    .end local v4    # "oldPos":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mDownY:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 149
    .local v3, "dy":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mDownX:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 150
    .local v2, "dx":F
    iget v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    if-ne v7, v6, :cond_6

    .line 151
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v7, :cond_5

    .line 152
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v7, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    .line 154
    :cond_5
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    new-array v8, v6, [I

    aput v9, v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 155
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 156
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 158
    :cond_6
    iget v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    if-nez v7, :cond_1

    .line 159
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_Y:I

    int-to-float v8, v8

    cmpl-float v7, v7, v8

    if-lez v7, :cond_7

    .line 160
    const/4 v6, 0x2

    iput v6, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    goto/16 :goto_1

    .line 161
    :cond_7
    iget v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->MAX_X:I

    int-to-float v7, v7

    cmpl-float v7, v2, v7

    if-lez v7, :cond_1

    .line 162
    iput v6, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    .line 163
    iget-object v6, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    if-eqz v6, :cond_1

    .line 164
    iget-object v6, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    iget v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v6, v7}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;->onSwipeStart(I)V

    goto/16 :goto_1

    .line 170
    .end local v2    # "dx":F
    .end local v3    # "dy":F
    :pswitch_2
    iget v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchState:I

    if-ne v7, v6, :cond_1

    .line 171
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v7, :cond_8

    .line 172
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v7, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->onSwipe(Landroid/view/MotionEvent;)Z

    .line 173
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v7}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v7

    if-nez v7, :cond_8

    .line 174
    const/4 v7, -0x1

    iput v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 175
    iput-object v11, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .line 178
    :cond_8
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    if-eqz v7, :cond_9

    .line 179
    iget-object v7, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    iget v8, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    invoke-interface {v7, v8}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;->onSwipeEnd(I)V

    .line 181
    :cond_9
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->setAction(I)V

    .line 182
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Adapter;

    .prologue
    .line 19
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1    # "x0":Landroid/widget/Adapter;
    invoke-virtual {p0, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 62
    new-instance v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$1;-><init>(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;Landroid/content/Context;Landroid/widget/ListAdapter;)V

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method

.method public setCloseInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mCloseInterpolator:Landroid/view/animation/Interpolator;

    .line 87
    return-void
.end method

.method public setMenuCreator(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;)V
    .locals 0
    .param p1, "menuCreator"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mMenuCreator:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuCreator;

    .line 212
    return-void
.end method

.method public setOnMenuItemClickListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;)V
    .locals 0
    .param p1, "onMenuItemClickListener"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnMenuItemClickListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnMenuItemClickListener;

    .line 217
    return-void
.end method

.method public setOnSwipeListener(Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;)V
    .locals 0
    .param p1, "onSwipeListener"    # Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOnSwipeListener:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView$OnSwipeListener;

    .line 221
    return-void
.end method

.method public setOpenInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0
    .param p1, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mOpenInterpolator:Landroid/view/animation/Interpolator;

    .line 91
    return-void
.end method

.method public smoothOpenMenu(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    if-lt p1, v1, :cond_1

    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getLastVisiblePosition()I

    move-result v1

    if-gt p1, v1, :cond_1

    .line 193
    invoke-virtual {p0}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 194
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v1, :cond_1

    .line 195
    iput p1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchPosition:I

    .line 196
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->smoothCloseMenu()V

    .line 199
    :cond_0
    check-cast v0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .end local v0    # "view":Landroid/view/View;
    iput-object v0, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    .line 200
    iget-object v1, p0, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuListView;->mTouchView:Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;

    invoke-virtual {v1}, Lcom/baoyz/swipemenulistviewsample/swipemenulistview/SwipeMenuLayout;->smoothOpenMenu()V

    .line 203
    :cond_1
    return-void
.end method
