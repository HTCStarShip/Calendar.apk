.class Lcom/htc/calendar/EditEvent$CalendarsAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "EditEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EditEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CalendarsAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EditEvent;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/EditEvent;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    .line 642
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->this$0:Lcom/htc/calendar/EditEvent;

    .line 643
    const v0, 0x7f030017

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, p3, v1}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;Z)V

    .line 644
    const v0, 0x7f03002a

    invoke-virtual {p0, v0}, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->setDropDownViewResource(I)V

    .line 645
    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 12
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    const/4 v11, 0x7

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 649
    const v8, 0x7f0d002b

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItemColorBar;

    .line 650
    .local v3, colorBar:Lcom/htc/widget/HtcListItemColorBar;
    if-eqz v3, :cond_0

    .line 651
    const/4 v8, 0x3

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 652
    .local v2, color:I
    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcListItemColorBar;->setBackgroundColor(I)V

    .line 655
    .end local v2           #color:I
    :cond_0
    const v8, 0x7f0d00c8

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItemCheckBox;

    .line 656
    .local v1, chkBox:Lcom/htc/widget/HtcListItemCheckBox;
    if-eqz v1, :cond_1

    .line 657
    invoke-virtual {v1, v9}, Lcom/htc/widget/HtcListItemCheckBox;->setVisibility(I)V

    .line 660
    :cond_1
    const v8, 0x7f0d00c7

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/htc/widget/HtcListItemColorIcon;

    .line 661
    .local v7, typeIcon:Lcom/htc/widget/HtcListItemColorIcon;
    if-eqz v7, :cond_2

    .line 662
    invoke-virtual {v7, v9}, Lcom/htc/widget/HtcListItemColorIcon;->setVisibility(I)V

    .line 669
    :cond_2
    const v8, 0x7f0d002d

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/htc/widget/HtcListItem2LineText;

    .line 670
    .local v6, name:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v6, :cond_4

    .line 671
    const/4 v8, 0x1

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 672
    .local v5, displayName:Ljava/lang/String;
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8}, Lcom/htc/util/calendar/tools/IconTools;->getAppNameByAccountType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, appName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 675
    move-object v0, v5

    .line 676
    const/4 v8, 0x2

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 678
    :cond_3
    invoke-virtual {v6, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    .line 679
    invoke-virtual {v6, v5}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 681
    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 682
    invoke-virtual {v6, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 689
    .end local v0           #appName:Ljava/lang/String;
    .end local v5           #displayName:Ljava/lang/String;
    :cond_4
    :goto_0
    new-instance v4, Lcom/htc/calendar/EditEvent$CalendarValueContainer;

    iget-object v8, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->this$0:Lcom/htc/calendar/EditEvent;

    const/4 v9, 0x0

    invoke-direct {v4, v8, v9}, Lcom/htc/calendar/EditEvent$CalendarValueContainer;-><init>(Lcom/htc/calendar/EditEvent;Lcom/htc/calendar/EditEvent$1;)V

    .line 690
    .local v4, cvc:Lcom/htc/calendar/EditEvent$CalendarValueContainer;
    invoke-interface {p3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->calendar_id:J

    .line 691
    const/4 v8, 0x4

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v4, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->reminder_type:I

    .line 692
    const/4 v8, 0x5

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    iput v8, v4, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->reminder_duration:I

    .line 693
    invoke-interface {p3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->sync_account_type:Ljava/lang/String;

    .line 694
    const/4 v8, 0x6

    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/htc/calendar/EditEvent$CalendarValueContainer;->sync_account:Ljava/lang/String;

    .line 695
    invoke-virtual {p1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 697
    return-void

    .line 684
    .end local v4           #cvc:Lcom/htc/calendar/EditEvent$CalendarValueContainer;
    .restart local v0       #appName:Ljava/lang/String;
    .restart local v5       #displayName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v6, v10}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto :goto_0
.end method

.method public changeCursorNoCloseCursor(Landroid/database/Cursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 721
    :goto_0
    return-void

    .line 703
    :cond_0
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 705
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 707
    :cond_1
    iput-object p1, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mCursor:Landroid/database/Cursor;

    .line 708
    if-eqz p1, :cond_2

    .line 709
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mChangeObserver:Landroid/widget/CursorAdapter$ChangeObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 710
    iget-object v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 711
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mRowIDColumn:I

    .line 712
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mDataValid:Z

    .line 714
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 716
    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mRowIDColumn:I

    .line 717
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->mDataValid:Z

    .line 719
    invoke-virtual {p0}, Lcom/htc/calendar/EditEvent$CalendarsAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
