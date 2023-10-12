const { registerBlockType } = wp.blocks;
const { InnerBlocks } = wp.blockEditor;
const { createElement } = wp.element;

const { blockName } = blockData;

registerBlockType(`oizumi/${blockName}`, {
  title: 'Two Columns with Overlap Image Block',
  icon: 'smiley',
  category: 'common',
  attributes: {
    headingContent: {
      type: 'string',
      source: 'html',
      selector: 'h2',
    },
    paragraphContent: {
      type: 'string',
      source: 'html',
      selector: 'p',
    },
    imageBackground: {
      type: 'image',
      default: '',
    },
    imageMobile: {
      type: 'image',
      default: '',
    },
    imageDesktop: {
      type: 'image',
      default: '',
    },
  },
  edit: function (props) {
    const blockElement = document.querySelector('.oizumi-hero-heading');
    const initialHeadingContent = blockElement
      ? blockElement.getAttribute('data-heading-content')
      : '';

    const initialAttributes = {
      headingContent: initialHeadingContent,
      paragraphContent: props.attributes.paragraphContent,
      imageBackground: props.attributes.imageBackground,
      imageMobile: props.attributes.imageMobile,
      imageDesktop: props.attributes.imageDesktop,
    };

    // Set the initial attributes using the setAttributes function
    props.setAttributes(initialAttributes);

    const blockProps = wp.blockEditor.useBlockProps();

    return createElement(
      'div',
      blockProps,
      createElement(InnerBlocks, {
        template: [
          [
            'core/columns',
            { columns: 2 },
            [
              [
                'core/column',
                {},
                [
                  ['core/heading', {
                    content: initialHeadingContent,
                    className: `oizumi-hero-heading`,
                   }],
                  [
                    'core/paragraph',
                    { content: props.attributes.paragraphContent },
                  ],
                ],
              ],
              [
                'core/column',
                {},
                [
                  ['core/image', { image: props.attributes.imageBackground }],
                  ['core/image', { image: props.attributes.imageMobile }],
                  ['core/image', { image: props.attributes.imageDesktop }],
                ],
              ],
            ],
          ],
        ],
        templateLock: 'all',
      })
    );
  },
  save: function (props) {
    return null;
  },
});
