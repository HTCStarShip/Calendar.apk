.class Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/htc/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 825
    iput-object p1, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    .line 826
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 827
    return-void
.end method

.method private processNewCursor(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .locals 7
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 1030
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 1032
    :try_start_0
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    iget v6, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    #calls: Lcom/htc/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/htc/calendar/AgendaWindowAdapter;->access$2000(Lcom/htc/calendar/AgendaWindowAdapter;I)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 1033
    .local v1, info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 1034
    .local v3, listPositionOffset:I
    if-nez v1, :cond_1

    .line 1035
    new-instance v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$2100(Lcom/htc/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/content/Context;)V

    .line 1044
    .restart local v1       #info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    iget v4, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 1045
    iget v4, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 1046
    iput-object p2, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 1047
    iget-object v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/htc/calendar/AgendaByDayAdapter;->changeCursor(Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 1048
    iget-object v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/htc/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/htc/calendar/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 1051
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v6, p1, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_2

    .line 1053
    :cond_0
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 1054
    iget v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 1065
    :goto_1
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/htc/calendar/AgendaWindowAdapter;->access$2202(Lcom/htc/calendar/AgendaWindowAdapter;I)I

    .line 1066
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1067
    .local v2, info3:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$2200(Lcom/htc/calendar/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 1068
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    iget v6, v2, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/htc/calendar/AgendaWindowAdapter;->access$2212(Lcom/htc/calendar/AgendaWindowAdapter;I)I

    goto :goto_2

    .line 1073
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2           #info3:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3           #listPositionOffset:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1040
    .restart local v1       #info:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_1
    :try_start_1
    iget v4, v1, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_0

    .line 1061
    :cond_2
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 1070
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/htc/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/htc/calendar/AgendaWindowAdapter;->access$2302(Lcom/htc/calendar/AgendaWindowAdapter;Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 1072
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 22
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 831
    move-object/from16 v4, p2

    check-cast v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    .line 840
    .local v4, data:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    if-nez p3, :cond_1

    .line 841
    invoke-static {}, Lcom/htc/calendar/AgendaWindowAdapter;->access$000()Ljava/lang/String;

    move-result-object v18

    const-string v19, "onQueryComplete cursor is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    :cond_0
    :goto_0
    return-void

    .line 846
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$100(Lcom/htc/calendar/AgendaWindowAdapter;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 847
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_0

    .line 848
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 854
    :cond_2
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 855
    .local v3, cursorSize:I
    if-gtz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_3

    iget v0, v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    .line 856
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v4, v1}, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v10

    .line 862
    .local v10, listPositionOffset:I
    iget-object v0, v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mQueryNewerCount:I
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$300(Lcom/htc/calendar/AgendaWindowAdapter;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mQueryOlderCount:I
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$400(Lcom/htc/calendar/AgendaWindowAdapter;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_4

    .line 864
    new-instance v12, Landroid/text/format/Time;

    invoke-direct {v12}, Landroid/text/format/Time;-><init>()V

    .line 865
    .local v12, now:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v12, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 866
    iput-object v12, v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 872
    .end local v12           #now:Landroid/text/format/Time;
    :cond_4
    iget-object v0, v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v18, v0

    if-nez v18, :cond_c

    .line 873
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 874
    if-eqz v10, :cond_5

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$500(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/calendar/AgendaListView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/htc/calendar/AgendaListView;->shiftSelection(I)V

    .line 900
    .end local v10           #listPositionOffset:I
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$700(Lcom/htc/calendar/AgendaWindowAdapter;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 901
    new-instance v7, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler$1;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;)V

    .line 910
    .local v7, headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableTheme()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 921
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$500(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/calendar/AgendaListView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter;->mFlFooter:Lcom/htc/widget/HtcListItem;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/htc/calendar/AgendaListView;->addFooterView(Landroid/view/View;)V

    .line 922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #setter for: Lcom/htc/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v18 .. v19}, Lcom/htc/calendar/AgendaWindowAdapter;->access$702(Lcom/htc/calendar/AgendaWindowAdapter;Z)Z

    .line 924
    .end local v7           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1100(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v19

    monitor-enter v19

    .line 925
    const/16 v16, -0x1

    .line 926
    .local v16, totalAgendaRangeStart:I
    const/4 v15, -0x1

    .line 928
    .local v15, totalAgendaRangeEnd:I
    if-eqz v3, :cond_11

    .line 930
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1100(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    .line 934
    .local v17, x:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    #setter for: Lcom/htc/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I
    invoke-static {v0, v1}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1202(Lcom/htc/calendar/AgendaWindowAdapter;I)I

    .line 935
    iget v0, v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v18, v0

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1308(Lcom/htc/calendar/AgendaWindowAdapter;)I

    .line 941
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v18

    iget v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v16, v0

    .line 942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, v18

    iget v15, v0, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 991
    .end local v17           #x:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_8
    :goto_4
    invoke-static {}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1500()I

    move-result v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    .line 992
    invoke-static {}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1500()I

    move-result v16

    .line 994
    :cond_9
    invoke-static {}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1600()I

    move-result v18

    move/from16 v0, v18

    if-le v15, v0, :cond_a

    .line 995
    invoke-static {}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1600()I

    move-result v16

    .line 998
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    #calls: Lcom/htc/calendar/AgendaWindowAdapter;->updateHeaderFooter(II)V
    invoke-static {v0, v1, v15}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1700(Lcom/htc/calendar/AgendaWindowAdapter;II)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1100(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1002
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;>;"
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_b

    .line 1003
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    .line 1004
    .local v13, queryData:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    iget v0, v13, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v20, v0

    iget v0, v13, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v21, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v21

    #calls: Lcom/htc/calendar/AgendaWindowAdapter;->isInRange(II)Z
    invoke-static {v0, v1, v2}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1800(Lcom/htc/calendar/AgendaWindowAdapter;II)Z

    move-result v18

    if-nez v18, :cond_15

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/htc/calendar/AgendaWindowAdapter;->doQuery(Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V
    invoke-static {v0, v13}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1900(Lcom/htc/calendar/AgendaWindowAdapter;Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;)V

    .line 1015
    .end local v13           #queryData:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_b
    monitor-exit v19

    goto/16 :goto_0

    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;>;"
    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 878
    .end local v15           #totalAgendaRangeEnd:I
    .end local v16           #totalAgendaRangeStart:I
    .restart local v10       #listPositionOffset:I
    :cond_c
    iget-object v6, v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 879
    .local v6, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    #calls: Lcom/htc/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I
    invoke-static {v0, v6}, Lcom/htc/calendar/AgendaWindowAdapter;->access$600(Lcom/htc/calendar/AgendaWindowAdapter;Landroid/text/format/Time;)I

    move-result v11

    .line 882
    .local v11, newPosition:I
    if-ltz v11, :cond_5

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/htc/calendar/AgendaListView;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$500(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/calendar/AgendaListView;

    move-result-object v18

    add-int/lit8 v19, v11, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/htc/calendar/AgendaListView;->setSelection(I)V

    goto/16 :goto_1

    .line 893
    .end local v6           #goToTime:Landroid/text/format/Time;
    .end local v10           #listPositionOffset:I
    .end local v11           #newPosition:I
    :cond_d
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isClosed()Z

    move-result v18

    if-nez v18, :cond_5

    .line 894
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 913
    .restart local v7       #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_e
    invoke-static {}, Lcom/htc/calendar/Utils;->isEnableSkin()Z

    move-result v18

    if-eqz v18, :cond_f

    .line 914
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$800(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/widget/HtcListItemSingleText;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemSingleText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mFooterView:Lcom/htc/widget/HtcListItemSingleText;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1000(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/widget/HtcListItemSingleText;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemSingleText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 917
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mHeaderView:Lcom/htc/widget/HtcListItemSingleText;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$800(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/widget/HtcListItemSingleText;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemSingleText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mFooterView:Lcom/htc/widget/HtcListItemSingleText;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1000(Lcom/htc/calendar/AgendaWindowAdapter;)Lcom/htc/widget/HtcListItemSingleText;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Lcom/htc/widget/HtcListItemSingleText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 937
    .end local v7           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    .restart local v15       #totalAgendaRangeEnd:I
    .restart local v16       #totalAgendaRangeStart:I
    .restart local v17       #x:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_10
    :try_start_1
    iget v0, v4, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1408(Lcom/htc/calendar/AgendaWindowAdapter;)I

    goto/16 :goto_3

    .line 944
    .end local v17           #x:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1100(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;

    .line 947
    .local v14, querySpec:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_14

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 949
    .local v5, first:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$200(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 951
    .local v9, last:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget v0, v5, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_12

    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    iget v0, v5, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_12

    .line 952
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v5, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 955
    :cond_12
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    iget v0, v9, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_13

    iget v0, v9, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v18, v0

    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_13

    .line 956
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v9, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 959
    :cond_13
    iget v0, v5, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v16, v0

    .line 960
    iget v15, v9, Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 968
    .end local v5           #first:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v9           #last:Lcom/htc/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_6
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 985
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1204(Lcom/htc/calendar/AgendaWindowAdapter;)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/htc/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/htc/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/htc/calendar/AgendaWindowAdapter;->access$1100(Lcom/htc/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_4

    .line 962
    :cond_14
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v16, v0

    .line 963
    iget v15, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_6

    .line 970
    :pswitch_0
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v16, v0

    .line 971
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x5a

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_7

    .line 974
    :pswitch_1
    iget v15, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 975
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x5a

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_7

    .line 978
    :pswitch_2
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v16, v0

    .line 979
    iget v15, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 980
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x2d

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 981
    iget v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x2d

    move/from16 v0, v18

    iput v0, v14, Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_7

    .line 1011
    .end local v14           #querySpec:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;>;"
    .restart local v13       #queryData:Lcom/htc/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_15
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_5

    .line 968
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
