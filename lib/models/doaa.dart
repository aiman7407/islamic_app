class Doaa
{
  late int id;
  late String value;
  late String name;

  Doaa({required this.id, required this.value, required this.name});
  
  static List<Doaa> doaas=[
    Doaa(name: 'دعاء السفر', id: 1, value:
        'الله أكبر الله أكبر الله أكبر، سبحان الذي سخر لنا هذا وما كنا له مقرنين وإنا إلى ربنا لمنقلبون، اللهم إنا نسألك في سفرنا هذا البر والتقوى، ومن العمل ماترضى، اللهم هون علينا سفرنا هذا واطو عنا بعده، اللهم أنت الصاحب في السفر، والخليفة في الأهل، اللهم إني أعوذ بك من وعثاء السفر وكأبة المنظر وسوء المنقلب في المال والأهل'
    ' "وإذا رجع قال ” ايبون تائبون عابدون لربنا حامدون'
        ''
        ''),
    Doaa(name: 'أذكار الصباح', id: 2, value: 'محتوى اذكار الصباح'),
    Doaa(name: 'أذكار المساء', id: 3, value: 'محتوى اذكار المساء'),
  ];

}

